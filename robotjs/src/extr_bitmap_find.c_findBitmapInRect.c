
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTHashTable ;
typedef int MMRect ;
typedef int MMPoint ;
typedef int MMBitmapRef ;


 int MMPointZero ;
 int destroyBadShiftTable (int *) ;
 int findBitmapInRectAt (int ,int ,int *,int ,float,int ,int *) ;
 int initBadShiftTable (int *,int ) ;

int findBitmapInRect(MMBitmapRef needle,
               MMBitmapRef haystack,
                     MMPoint *point,
                     MMRect rect,
                     float tolerance)
{
 UTHashTable badShiftTable;
 int ret;

 initBadShiftTable(&badShiftTable, needle);
 ret = findBitmapInRectAt(needle, haystack, point, rect,
                          tolerance, MMPointZero, &badShiftTable);
 destroyBadShiftTable(&badShiftTable);
 return ret;
}
