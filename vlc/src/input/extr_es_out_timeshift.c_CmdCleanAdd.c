
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_fmt; } ;
struct TYPE_6__ {TYPE_1__ add; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ ts_cmd_t ;


 int es_format_Clean (int ) ;
 int free (int ) ;

__attribute__((used)) static void CmdCleanAdd( ts_cmd_t *p_cmd )
{
    es_format_Clean( p_cmd->u.add.p_fmt );
    free( p_cmd->u.add.p_fmt );
}
