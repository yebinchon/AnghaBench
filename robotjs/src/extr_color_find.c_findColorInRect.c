
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int origin; } ;
typedef TYPE_1__ MMRect ;
typedef int MMRGBHex ;
typedef int MMPoint ;
typedef int MMBitmapRef ;


 int findColorInRectAt (int ,int ,int *,TYPE_1__,float,int ) ;

int findColorInRect(MMBitmapRef image, MMRGBHex color,
                    MMPoint *point, MMRect rect, float tolerance)
{
 return findColorInRectAt(image, color, point, rect, tolerance, rect.origin);
}
