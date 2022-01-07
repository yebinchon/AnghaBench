
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int pf_write; } ;
typedef TYPE_1__ sout_access_out_t ;


 int VLC_SUCCESS ;
 int Write ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;

    p_access->pf_write = Write;

    return VLC_SUCCESS;
}
