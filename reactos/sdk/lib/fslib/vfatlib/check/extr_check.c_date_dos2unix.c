
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short time_t ;


 unsigned short* day_n ;

__attribute__((used)) static time_t date_dos2unix(unsigned short time, unsigned short date)
{
    int month, year;
    time_t secs;

    month = ((date >> 5) & 15) - 1;
    if (month < 0) {

 month = 0;
    }
    year = date >> 9;
    secs =
 (time & 31) * 2 + 60 * ((time >> 5) & 63) + (time >> 11) * 3600 +
 86400 * ((date & 31) - 1 + day_n[month] + (year / 4) + year * 365 -
   ((year & 3) == 0 && month < 2 ? 1 : 0) + 3653);

    return secs;
}
