
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {scalar_t__ references; struct cmdq_item* name; int queue; int * cmdlist; int * client; struct cmdq_item* shared; int * formats; } ;


 int TAILQ_REMOVE (int ,struct cmdq_item*,int ) ;
 int cmd_list_free (int *) ;
 int entry ;
 int format_free (int *) ;
 int free (struct cmdq_item*) ;
 int server_client_unref (int *) ;

__attribute__((used)) static void
cmdq_remove(struct cmdq_item *item)
{
 if (item->shared != ((void*)0) && --item->shared->references == 0) {
  if (item->shared->formats != ((void*)0))
   format_free(item->shared->formats);
  free(item->shared);
 }

 if (item->client != ((void*)0))
  server_client_unref(item->client);

 if (item->cmdlist != ((void*)0))
  cmd_list_free(item->cmdlist);

 TAILQ_REMOVE(item->queue, item, entry);

 free(item->name);
 free(item);
}
