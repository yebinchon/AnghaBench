
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {int (* pf_read ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ sout_access_out_t ;
typedef int block_t ;


 int VLC_EGENERIC ;
 int stub1 (TYPE_1__*,int *) ;

ssize_t sout_AccessOutRead( sout_access_out_t *p_access, block_t *p_buffer )
{
    return( p_access->pf_read ?
            p_access->pf_read( p_access, p_buffer ) : VLC_EGENERIC );
}
