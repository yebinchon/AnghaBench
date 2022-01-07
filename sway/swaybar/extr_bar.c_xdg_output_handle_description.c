
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zxdg_output_v1 {int dummy; } ;
struct swaybar_output {char* identifier; } ;


 int SWAY_ERROR ;
 int free (char*) ;
 char* malloc (size_t) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;
 int sway_log (int ,char*) ;

__attribute__((used)) static void xdg_output_handle_description(void *data,
  struct zxdg_output_v1 *xdg_output, const char *description) {


 struct swaybar_output *output = data;
 free(output->identifier);
 output->identifier = ((void*)0);
 char *paren = strrchr(description, '(');
 if (paren) {
  size_t length = paren - description;
  output->identifier = malloc(length);
  if (!output->identifier) {
   sway_log(SWAY_ERROR, "Failed to allocate output identifier");
   return;
  }
  strncpy(output->identifier, description, length);
  output->identifier[length - 1] = '\0';
 }
}
