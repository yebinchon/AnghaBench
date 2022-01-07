
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UTHashTable ;
struct TYPE_7__ {int width; } ;
typedef int MMRect ;
typedef int MMPoint ;
typedef TYPE_1__* MMBitmapRef ;


 int ITER_NEXT_POINT (int ,size_t const,int ) ;
 int MMPointZero ;
 int destroyBadShiftTable (int *) ;
 scalar_t__ findBitmapInRectAt (TYPE_1__*,TYPE_1__*,int *,int ,float,int ,int *) ;
 int initBadShiftTable (int *,TYPE_1__*) ;

size_t countOfBitmapInRect(MMBitmapRef needle, MMBitmapRef haystack,
                           MMRect rect, float tolerance)
{
 size_t count = 0;
 MMPoint point = MMPointZero;
 UTHashTable badShiftTable;

 initBadShiftTable(&badShiftTable, needle);
 while (findBitmapInRectAt(needle, haystack, &point, rect,
                           tolerance, point, &badShiftTable) == 0) {
  const size_t scanWidth = (haystack->width - needle->width) + 1;
  ++count;
  ITER_NEXT_POINT(point, scanWidth, 0);
 }
 destroyBadShiftTable(&badShiftTable);

 return count;
}
