
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pf_readdir ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ stream_t ;
typedef int input_item_node_t ;


 int assert (int ) ;
 int stub1 (TYPE_1__*,int *) ;

int vlc_stream_ReadDir( stream_t *s, input_item_node_t *p_node )
{
    assert(s->pf_readdir != ((void*)0));
    return s->pf_readdir( s, p_node );
}
