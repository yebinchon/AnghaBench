
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int x; } ;
struct TYPE_6__ {int width; } ;
struct TYPE_8__ {TYPE_2__ origin; TYPE_1__ size; } ;
typedef TYPE_3__ MMRect ;
typedef int MMRGBHex ;
typedef int MMPointArrayRef ;
typedef int MMPoint ;
typedef int MMBitmapRef ;


 int ITER_NEXT_POINT (int ,int ,int ) ;
 int MMPointArrayAppendPoint (int ,int ) ;
 int MMPointZero ;
 int createMMPointArray (int ) ;
 scalar_t__ findColorInRectAt (int ,int ,int *,TYPE_3__,float,int ) ;

MMPointArrayRef findAllColorInRect(MMBitmapRef image, MMRGBHex color,
                                   MMRect rect, float tolerance)
{
 MMPointArrayRef pointArray = createMMPointArray(0);
 MMPoint point = MMPointZero;

 while (findColorInRectAt(image, color, &point, rect, tolerance, point) == 0) {
  MMPointArrayAppendPoint(pointArray, point);
  ITER_NEXT_POINT(point, rect.size.width, rect.origin.x);
 }

 return pointArray;
}
