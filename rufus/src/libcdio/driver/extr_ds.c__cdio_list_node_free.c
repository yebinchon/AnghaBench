
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* list; } ;
struct TYPE_7__ {scalar_t__ length; TYPE_2__* end; TYPE_2__* begin; } ;
typedef TYPE_1__ CdioList_t ;
typedef TYPE_2__ CdioListNode_t ;
typedef int (* CdioDataFree_t ) (int ) ;


 int _cdio_list_length (TYPE_1__*) ;
 int _cdio_list_node_data (TYPE_2__*) ;
 int cdio_assert (int) ;
 int free (TYPE_2__*) ;

void
_cdio_list_node_free (CdioListNode_t *p_node,
                      int free_data, CdioDataFree_t free_fn)
{
  CdioList_t *p_list;
  CdioListNode_t *prev_node;

  cdio_assert (p_node != ((void*)0));

  p_list = p_node->list;

  cdio_assert (_cdio_list_length (p_list) > 0);

  if (free_data && free_fn)
    free_fn (_cdio_list_node_data (p_node));

  if (_cdio_list_length (p_list) == 1)
    {
      cdio_assert (p_list->begin == p_list->end);

      p_list->end = p_list->begin = ((void*)0);
      p_list->length = 0;
      free (p_node);
      return;
    }

  cdio_assert (p_list->begin != p_list->end);

  if (p_list->begin == p_node)
    {
      p_list->begin = p_node->next;
      free (p_node);
      p_list->length--;
      return;
    }

  for (prev_node = p_list->begin; prev_node->next; prev_node = prev_node->next)
    if (prev_node->next == p_node)
      break;

  cdio_assert (prev_node->next != ((void*)0));

  if (p_list->end == p_node)
    p_list->end = prev_node;

  prev_node->next = p_node->next;

  p_list->length--;

  free (p_node);
}
