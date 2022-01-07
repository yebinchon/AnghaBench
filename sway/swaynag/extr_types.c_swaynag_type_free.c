
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaynag_type {struct swaynag_type* output; struct swaynag_type* font; struct swaynag_type* name; } ;


 int free (struct swaynag_type*) ;

void swaynag_type_free(struct swaynag_type *type) {
 free(type->name);
 free(type->font);
 free(type->output);
 free(type);
}
