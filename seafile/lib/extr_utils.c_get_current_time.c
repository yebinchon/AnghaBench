
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
typedef TYPE_1__ GTimeVal ;


 int g_get_current_time (TYPE_1__*) ;

gint64
get_current_time()
{
    GTimeVal tv;
    gint64 t;

    g_get_current_time (&tv);
    t = tv.tv_sec * (gint64)1000000 + tv.tv_usec;
    return t;
}
