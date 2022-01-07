
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* p_es; } ;
struct TYPE_7__ {TYPE_1__ del; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ ts_cmd_t ;
typedef int es_out_t ;
struct TYPE_9__ {scalar_t__ p_es; } ;


 int es_out_Del (int *,scalar_t__) ;
 int free (TYPE_4__*) ;

__attribute__((used)) static void CmdExecuteDel( es_out_t *p_out, ts_cmd_t *p_cmd )
{
    if( p_cmd->u.del.p_es->p_es )
        es_out_Del( p_out, p_cmd->u.del.p_es->p_es );
    free( p_cmd->u.del.p_es );
}
