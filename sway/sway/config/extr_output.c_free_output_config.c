
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_config {struct output_config* background_option; struct output_config* background; struct output_config* name; } ;


 int free (struct output_config*) ;

void free_output_config(struct output_config *oc) {
 if (!oc) {
  return;
 }
 free(oc->name);
 free(oc->background);
 free(oc->background_option);
 free(oc);
}
