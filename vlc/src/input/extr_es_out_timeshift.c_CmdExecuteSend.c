
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p_es; int * p_block; } ;
struct TYPE_7__ {TYPE_3__ send; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_4__ ts_cmd_t ;
typedef int es_out_t ;
typedef int block_t ;
struct TYPE_6__ {scalar_t__ p_es; } ;


 int VLC_EGENERIC ;
 int block_Release (int *) ;
 int es_out_Send (int *,scalar_t__,int *) ;

__attribute__((used)) static int CmdExecuteSend( es_out_t *p_out, ts_cmd_t *p_cmd )
{
    block_t *p_block = p_cmd->u.send.p_block;

    p_cmd->u.send.p_block = ((void*)0);

    if( p_block )
    {
        if( p_cmd->u.send.p_es->p_es )
            return es_out_Send( p_out, p_cmd->u.send.p_es->p_es, p_block );
        block_Release( p_block );
    }
    return VLC_EGENERIC;
}
