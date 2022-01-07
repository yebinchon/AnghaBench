
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int modes; } ;
struct window_mode_entry {void* data; } ;
struct window_client_modedata {struct window_pane* wp; } ;
struct client {int dummy; } ;
typedef int key_code ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 int window_client_key (struct window_mode_entry*,struct client*,int *,int *,int ,int *) ;

__attribute__((used)) static void
window_client_menu(void *modedata, struct client *c, key_code key)
{
 struct window_client_modedata *data = modedata;
 struct window_pane *wp = data->wp;
 struct window_mode_entry *wme;

 wme = TAILQ_FIRST(&wp->modes);
 if (wme == ((void*)0) || wme->data != modedata)
  return;
 window_client_key(wme, c, ((void*)0), ((void*)0), key, ((void*)0));
}
