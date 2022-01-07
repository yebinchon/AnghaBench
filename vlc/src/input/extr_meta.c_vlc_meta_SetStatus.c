
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_status; } ;
typedef TYPE_1__ vlc_meta_t ;



void vlc_meta_SetStatus( vlc_meta_t *m, int status )
{
    m->i_status = status;
}
