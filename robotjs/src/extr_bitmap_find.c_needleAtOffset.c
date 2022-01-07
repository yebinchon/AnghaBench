
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
typedef int MMRGBHex ;
typedef TYPE_1__ MMPoint ;
typedef TYPE_2__* MMBitmapRef ;


 TYPE_1__ MMPointMake (scalar_t__,scalar_t__) ;
 int MMRGBHexAtPoint (TYPE_2__*,scalar_t__,scalar_t__) ;
 int MMRGBHexSimilarToColor (int ,int ,float) ;

__attribute__((used)) static int needleAtOffset(MMBitmapRef needle, MMBitmapRef haystack,
                          MMPoint offset, float tolerance)
{
 const MMPoint lastPoint = MMPointMake(needle->width - 1, needle->height - 1);
 MMPoint scan;



 for (scan.y = lastPoint.y; ; --scan.y) {
  for (scan.x = lastPoint.x; ; --scan.x) {
   MMRGBHex ncolor = MMRGBHexAtPoint(needle, scan.x, scan.y);
   MMRGBHex hcolor = MMRGBHexAtPoint(haystack, offset.x + scan.x,
                                               offset.y + scan.y);
   if (!MMRGBHexSimilarToColor(ncolor, hcolor, tolerance)) return 0;
   if (scan.x == 0) break;
  }
  if (scan.y == 0) break;
 }

 return 1;
}
