
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMonth; int wDay; int wYear; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int sprintf (char*,char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static const char *printSystemTime(const SYSTEMTIME *st)
{
    static char buf[64];

    sprintf(buf, "%02d-%02d-%04d %02d:%02d:%02d.%03d", st->wMonth, st->wDay,
     st->wYear, st->wHour, st->wMinute, st->wSecond, st->wMilliseconds);
    return buf;
}
