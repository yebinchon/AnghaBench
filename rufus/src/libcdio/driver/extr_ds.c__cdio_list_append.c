
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; void* data; TYPE_1__* list; } ;
struct TYPE_6__ {scalar_t__ length; TYPE_2__* end; } ;
typedef TYPE_1__ CdioList_t ;
typedef TYPE_2__ CdioListNode_t ;


 int _cdio_list_prepend (TYPE_1__*,void*) ;
 TYPE_2__* calloc (int,int) ;
 int cdio_assert (int ) ;

void
_cdio_list_append (CdioList_t *p_list, void *p_data)
{
  cdio_assert (p_list != ((void*)0));

  if (p_list->length == 0)
    {
      _cdio_list_prepend (p_list, p_data);
    }
  else
    {
      CdioListNode_t *p_new_node = calloc (1, sizeof (CdioListNode_t));
      cdio_assert (p_new_node != ((void*)0));

      p_new_node->list = p_list;
      p_new_node->next = ((void*)0);
      p_new_node->data = p_data;

      p_list->end->next = p_new_node;
      p_list->end = p_new_node;

      p_list->length++;
    }
}
