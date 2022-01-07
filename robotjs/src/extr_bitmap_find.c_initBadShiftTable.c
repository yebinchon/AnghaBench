
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct shiftNode {int dummy; } ;
typedef int UTHashTable ;
struct TYPE_8__ {int width; size_t height; } ;
struct TYPE_7__ {size_t y; int x; } ;
typedef int MMRGBHex ;
typedef TYPE_1__ MMPoint ;
typedef TYPE_2__* MMBitmapRef ;


 TYPE_1__ MMPointMake (int,size_t) ;
 int MMRGBHexAtPoint (TYPE_2__*,int,size_t) ;
 int addNodeToTable (int *,int ,TYPE_1__) ;
 int initHashTable (int *,size_t const,int) ;
 int tableHasKey (int *,int ) ;

__attribute__((used)) static void initBadShiftTable(UTHashTable *jumpTable, MMBitmapRef needle)
{
 const MMPoint lastPoint = MMPointMake(needle->width - 1, needle->height - 1);
 const size_t maxColors = needle->width * needle->height;
 MMPoint scan;


 initHashTable(jumpTable, maxColors, sizeof(struct shiftNode));


 for (scan.y = lastPoint.y; ; --scan.y) {
  for (scan.x = lastPoint.x; ; --scan.x) {
   MMRGBHex color = MMRGBHexAtPoint(needle, scan.x, scan.y);
   if (!tableHasKey(jumpTable, color)) {
    addNodeToTable(jumpTable, color,
                   MMPointMake(needle->width - scan.x,
                               needle->height - scan.y));
   }

   if (scan.x == 0) break;
  }
  if (scan.y == 0) break;
 }
}
