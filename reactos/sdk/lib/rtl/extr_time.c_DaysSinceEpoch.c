
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAYSPERNORMALYEAR ;
 int EPOCHYEAR ;

__attribute__((used)) static int DaysSinceEpoch(int Year)
{
    int Days;
    Year--;
    Days = Year * DAYSPERNORMALYEAR + Year / 4 - Year / 100 + Year / 400;
    Days -= (EPOCHYEAR - 1) * DAYSPERNORMALYEAR + (EPOCHYEAR - 1) / 4 - (EPOCHYEAR - 1) / 100 + (EPOCHYEAR - 1) / 400;
    return Days;
}
