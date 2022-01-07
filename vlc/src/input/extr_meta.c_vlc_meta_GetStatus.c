
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_status; } ;
typedef TYPE_1__ vlc_meta_t ;



int vlc_meta_GetStatus( vlc_meta_t *m )
{
    return m->i_status;
}
