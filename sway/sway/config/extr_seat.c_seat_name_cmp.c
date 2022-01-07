
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seat_config {int name; } ;


 int strcmp (int ,char const*) ;

int seat_name_cmp(const void *item, const void *data) {
 const struct seat_config *sc = item;
 const char *name = data;
 return strcmp(sc->name, name);
}
