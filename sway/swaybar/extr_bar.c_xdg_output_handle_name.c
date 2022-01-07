
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {int name; } ;


 int free (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static void xdg_output_handle_name(void *data,
  struct zxdg_output_v1 *xdg_output, const char *name) {
 struct swaybar_output *output = data;
 free(output->name);
 output->name = strdup(name);
}
