
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_sni {int watcher_id; } ;


 int strcmp (int ,void const*) ;

__attribute__((used)) static int cmp_sni_id(const void *item, const void *cmp_to) {
 const struct swaybar_sni *sni = item;
 return strcmp(sni->watcher_id, cmp_to);
}
