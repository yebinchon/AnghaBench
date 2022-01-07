
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_head; int ** pp_append; } ;
struct TYPE_6__ {int * p_head; int ** pp_append; } ;
struct TYPE_7__ {TYPE_1__ leading; TYPE_2__ frame; } ;
typedef TYPE_3__ decoder_sys_t ;


 int block_ChainRelease (int *) ;

__attribute__((used)) static void DropStoredNAL( decoder_sys_t *p_sys )
{
    block_ChainRelease( p_sys->frame.p_head );
    block_ChainRelease( p_sys->leading.p_head );
    p_sys->frame.p_head = ((void*)0);
    p_sys->frame.pp_append = &p_sys->frame.p_head;
    p_sys->leading.p_head = ((void*)0);
    p_sys->leading.pp_append = &p_sys->leading.p_head;
}
