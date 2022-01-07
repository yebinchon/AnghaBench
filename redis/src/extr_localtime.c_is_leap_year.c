
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;



__attribute__((used)) static int is_leap_year(time_t year) {
    if (year % 4) return 0;
    else if (year % 100) return 1;
    else if (year % 400) return 0;
    else return 1;
}
