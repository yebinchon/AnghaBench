
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_block; int * p_es; } ;
struct TYPE_6__ {TYPE_1__ send; } ;
struct TYPE_7__ {TYPE_2__ u; int i_date; int i_type; } ;
typedef TYPE_3__ ts_cmd_t ;
typedef int es_out_id_t ;
typedef int block_t ;


 int C_SEND ;
 int vlc_tick_now () ;

__attribute__((used)) static void CmdInitSend( ts_cmd_t *p_cmd, es_out_id_t *p_es, block_t *p_block )
{
    p_cmd->i_type = C_SEND;
    p_cmd->i_date = vlc_tick_now();
    p_cmd->u.send.p_es = p_es;
    p_cmd->u.send.p_block = p_block;
}
