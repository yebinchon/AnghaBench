
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ allocnode ;
typedef TYPE_2__* adns_query ;
struct TYPE_9__ {TYPE_1__* head; } ;
struct TYPE_8__ {TYPE_1__* query_dgram; int search_vb; int vb; TYPE_6__ allocations; } ;


 int LIST_INIT (TYPE_6__) ;
 int adns__vbuf_free (int *) ;
 int cancel_children (TYPE_2__*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void free_query_allocs(adns_query qu) {
  allocnode *an, *ann;

  cancel_children(qu);
  for (an= qu->allocations.head; an; an= ann) { ann= an->next; free(an); }
  LIST_INIT(qu->allocations);
  adns__vbuf_free(&qu->vb);
  adns__vbuf_free(&qu->search_vb);
  free(qu->query_dgram);
  qu->query_dgram= 0;
}
