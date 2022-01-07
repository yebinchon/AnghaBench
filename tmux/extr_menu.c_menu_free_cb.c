
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu_data {int menu; int s; int data; int (* cb ) (int ,int ,int ,int ) ;int * item; } ;
struct client {struct menu_data* overlay_data; } ;


 int KEYC_NONE ;
 int UINT_MAX ;
 int cmdq_continue (int *) ;
 int free (struct menu_data*) ;
 int menu_free (int ) ;
 int screen_free (int *) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
menu_free_cb(struct client *c)
{
 struct menu_data *md = c->overlay_data;

 if (md->item != ((void*)0))
  cmdq_continue(md->item);

 if (md->cb != ((void*)0))
  md->cb(md->menu, UINT_MAX, KEYC_NONE, md->data);

 screen_free(&md->s);
 menu_free(md->menu);
 free(md);
}
