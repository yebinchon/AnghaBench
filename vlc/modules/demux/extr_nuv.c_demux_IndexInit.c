
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * idx; scalar_t__ i_idx_max; scalar_t__ i_idx; } ;
typedef TYPE_1__ demux_index_t ;



__attribute__((used)) static void demux_IndexInit( demux_index_t *p_idx )
{
    p_idx->i_idx = 0;
    p_idx->i_idx_max = 0;
    p_idx->idx = ((void*)0);
}
