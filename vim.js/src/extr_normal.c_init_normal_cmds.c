
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_char; } ;


 scalar_t__ NV_CMDS_SIZE ;
 size_t* nv_cmd_idx ;
 TYPE_1__* nv_cmds ;
 int nv_compare ;
 int nv_max_linear ;
 int qsort (void*,size_t,int,int ) ;

void
init_normal_cmds()
{
    int i;


    for (i = 0; i < (int)NV_CMDS_SIZE; ++i)
 nv_cmd_idx[i] = i;


    qsort((void *)&nv_cmd_idx, (size_t)NV_CMDS_SIZE, sizeof(short), nv_compare);


    for (i = 0; i < (int)NV_CMDS_SIZE; ++i)
 if (i != nv_cmds[nv_cmd_idx[i]].cmd_char)
     break;
    nv_max_linear = i - 1;
}
