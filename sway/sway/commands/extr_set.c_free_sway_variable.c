
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_variable {struct sway_variable* value; struct sway_variable* name; } ;


 int free (struct sway_variable*) ;

void free_sway_variable(struct sway_variable *var) {
 if (!var) {
  return;
 }
 free(var->name);
 free(var->value);
 free(var);
}
