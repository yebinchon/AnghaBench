
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_entry; scalar_t__ i_max; scalar_t__ i_size; } ;
typedef TYPE_1__ avi_index_t ;



__attribute__((used)) static void avi_index_Init( avi_index_t *p_index )
{
    p_index->i_size = 0;
    p_index->i_max = 0;
    p_index->p_entry = ((void*)0);
}
