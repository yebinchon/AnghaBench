
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ webvtt_dom_node_t ;



__attribute__((used)) static void webvtt_domnode_AppendLast( webvtt_dom_node_t **pp_append,
                                       webvtt_dom_node_t *p_node )
{
    while( *pp_append )
        pp_append = &((*pp_append)->p_next);
    *pp_append = p_node;
}
