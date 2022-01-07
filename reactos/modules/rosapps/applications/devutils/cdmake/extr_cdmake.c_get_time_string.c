
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int year; int month; int day; int second; int minute; int hour; } ;
struct TYPE_4__ {TYPE_1__ date_and_time; } ;


 TYPE_2__ root ;
 int sprintf (char*,char*,int,int,int,int ,int ,int ) ;

__attribute__((used)) static void get_time_string(char *str)
{
    sprintf(str, "%04d%02d%02d%02d%02d%02d00",
            root.date_and_time.year,
            root.date_and_time.month,
            root.date_and_time.day,
            root.date_and_time.hour,
            root.date_and_time.minute,
            root.date_and_time.second);
}
