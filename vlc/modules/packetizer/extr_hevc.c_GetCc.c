
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int p_ccs; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int decoder_cc_desc_t ;
typedef int block_t ;


 int * cc_storage_get_current (int ,int *) ;

__attribute__((used)) static block_t *GetCc( decoder_t *p_dec, decoder_cc_desc_t *p_desc )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    return cc_storage_get_current( p_sys->p_ccs, p_desc );
}
