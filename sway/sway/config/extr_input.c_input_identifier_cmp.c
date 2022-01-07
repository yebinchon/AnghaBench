
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_config {int identifier; } ;


 int strcmp (int ,char const*) ;

int input_identifier_cmp(const void *item, const void *data) {
 const struct input_config *ic = item;
 const char *identifier = data;
 return strcmp(ic->identifier, identifier);
}
