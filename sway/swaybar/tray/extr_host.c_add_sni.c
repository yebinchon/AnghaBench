
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_tray {int items; } ;
struct swaybar_sni {int dummy; } ;


 int SWAY_INFO ;
 int cmp_sni_id ;
 struct swaybar_sni* create_sni (char*,struct swaybar_tray*) ;
 int list_add (int ,struct swaybar_sni*) ;
 int list_seq_find (int ,int ,char*) ;
 int sway_log (int ,char*,char*) ;

__attribute__((used)) static void add_sni(struct swaybar_tray *tray, char *id) {
 int idx = list_seq_find(tray->items, cmp_sni_id, id);
 if (idx == -1) {
  sway_log(SWAY_INFO, "Registering Status Notifier Item '%s'", id);
  struct swaybar_sni *sni = create_sni(id, tray);
  if (sni) {
   list_add(tray->items, sni);
  }
 }
}
