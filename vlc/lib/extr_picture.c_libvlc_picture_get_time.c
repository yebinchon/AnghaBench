
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_time_t ;
struct TYPE_3__ {int time; } ;
typedef TYPE_1__ libvlc_picture_t ;



libvlc_time_t libvlc_picture_get_time( const libvlc_picture_t* pic )
{
    return pic->time;
}
