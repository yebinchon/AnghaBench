
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ CdioListNode_t ;



void *
_cdio_list_node_data (CdioListNode_t *p_node)
{
  if (p_node)
    return p_node->data;

  return ((void*)0);
}
