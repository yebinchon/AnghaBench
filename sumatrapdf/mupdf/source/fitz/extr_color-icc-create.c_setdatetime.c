
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ year; scalar_t__ seconds; scalar_t__ month; scalar_t__ minutes; scalar_t__ hours; scalar_t__ day; } ;
typedef TYPE_1__ icDateTimeNumber ;
typedef int fz_context ;



__attribute__((used)) static void
setdatetime(fz_context *ctx, icDateTimeNumber *datetime)
{
 datetime->day = 0;
 datetime->hours = 0;
 datetime->minutes = 0;
 datetime->month = 0;
 datetime->seconds = 0;
 datetime->year = 0;
}
