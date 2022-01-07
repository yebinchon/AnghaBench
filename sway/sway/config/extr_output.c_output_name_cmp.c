
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_config {int name; } ;


 int strcmp (int ,char const*) ;

int output_name_cmp(const void *item, const void *data) {
 const struct output_config *output = item;
 const char *name = data;

 return strcmp(output->name, name);
}
