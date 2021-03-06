//
//  BCGeometry.m
//  Benihime
//
//  Created by Shiki on 12/7/11.
//

#import "BCGeometry.h"
#import <math.h>

CGRect BCGRectSetWidth(CGRect rect, CGFloat width) {
  return CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height);
}

CGRect BCGRectSetHeight(CGRect rect, CGFloat height) {
  return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height);
}

CGRect BCGRectSetSize(CGRect rect, CGSize size) {
  return CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
}

CGRect BCGRectSetX(CGRect rect, CGFloat x) {
  return CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height);
}

CGRect BCGRectSetY(CGRect rect, CGFloat y) {
  return CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height);
}

CGRect BCGRectSetOrigin(CGRect rect, CGPoint origin) {
  return CGRectMake(origin.x, origin.y, rect.size.width, rect.size.height);
}

CGRect BCGRectSetOriginToCenter(CGRect rect, CGRect container) {
  CGPoint center = CGPointMake(CGRectGetMidX(container), CGRectGetMidY(container));
  return CGRectMake(center.x - rect.size.width * 0.5f, center.y - rect.size.height * 0.5f,
    rect.size.width, rect.size.height);
}

CGRect BCGRectAdd(CGRect rect, CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
  return CGRectMake(rect.origin.x + x, rect.origin.y + y, rect.size.width + width, rect.size.height + height);
}

CGRect BCGRectExpand(CGRect rect, CGFloat x, CGFloat y) {
  CGPoint origin = rect.origin;
  CGSize size = rect.size;
  return CGRectMake(origin.x - x / 2, origin.y - y / 2, size.width + x, size.height + y);
}

// From http://blog.digitalagua.com/2008/06/30/how-to-convert-degrees-to-radians-radians-to-degrees-in-objective-c/
CGFloat BCGDegreesToRadians(CGFloat degrees) {
  return degrees * M_PI / 180;
};

CGFloat BCGRadiansToDegrees(CGFloat radians) {
  return radians * 180 / M_PI;
};

CGFloat BCGNormalizeDegrees(CGFloat degrees) {
  degrees = fmodf(degrees, 360.f);
  if (degrees < 0)
    degrees += 360.f;
  return degrees;
}
