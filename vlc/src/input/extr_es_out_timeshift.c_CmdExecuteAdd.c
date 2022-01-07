
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p_fmt; TYPE_1__* p_es; } ;
struct TYPE_8__ {TYPE_2__ add; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
typedef TYPE_4__ ts_cmd_t ;
typedef int es_out_t ;
struct TYPE_6__ {int p_es; } ;


 int es_out_Add (int *,int ) ;

__attribute__((used)) static void CmdExecuteAdd( es_out_t *p_out, ts_cmd_t *p_cmd )
{
    p_cmd->u.add.p_es->p_es = es_out_Add( p_out, p_cmd->u.add.p_fmt );
}
