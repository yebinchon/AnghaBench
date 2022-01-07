
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pf_seek ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ sout_access_out_t ;
typedef int off_t ;


 int VLC_EGENERIC ;
 int stub1 (TYPE_1__*,int ) ;

int sout_AccessOutSeek( sout_access_out_t *p_access, off_t i_pos )
{
    if (p_access->pf_seek == ((void*)0))
        return VLC_EGENERIC;
    return p_access->pf_seek( p_access, i_pos );
}
