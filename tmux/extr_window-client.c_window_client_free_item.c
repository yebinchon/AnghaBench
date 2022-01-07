
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_client_itemdata {int c; } ;


 int free (struct window_client_itemdata*) ;
 int server_client_unref (int ) ;

__attribute__((used)) static void
window_client_free_item(struct window_client_itemdata *item)
{
 server_client_unref(item->c);
 free(item);
}
