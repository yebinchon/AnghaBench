
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t* renumber_map; TYPE_1__* page_object_lists; } ;
typedef TYPE_2__ pdf_write_state ;
struct TYPE_7__ {int len; size_t* object; size_t page_object_number; } ;
typedef TYPE_3__ page_objects ;
struct TYPE_5__ {int len; TYPE_3__** page; } ;



__attribute__((used)) static void page_objects_list_renumber(pdf_write_state *opts)
{
 int i, j;

 for (i = 0; i < opts->page_object_lists->len; i++)
 {
  page_objects *po = opts->page_object_lists->page[i];
  for (j = 0; j < po->len; j++)
  {
   po->object[j] = opts->renumber_map[po->object[j]];
  }
  po->page_object_number = opts->renumber_map[po->page_object_number];
 }
}
