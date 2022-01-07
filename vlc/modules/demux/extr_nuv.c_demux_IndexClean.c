
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * idx; } ;
typedef TYPE_1__ demux_index_t ;


 int free (int *) ;

__attribute__((used)) static void demux_IndexClean( demux_index_t *p_idx )
{
    free( p_idx->idx );
    p_idx->idx = ((void*)0);
}
