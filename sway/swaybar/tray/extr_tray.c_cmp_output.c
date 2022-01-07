
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar_output {scalar_t__ name; scalar_t__ identifier; } ;


 int strcmp (void const*,scalar_t__) ;

__attribute__((used)) static int cmp_output(const void *item, const void *cmp_to) {
 const struct swaybar_output *output = cmp_to;
 if (output->identifier && strcmp(item, output->identifier) == 0) {
  return 0;
 }
 return strcmp(item, output->name);
}
