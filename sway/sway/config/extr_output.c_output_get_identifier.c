
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_output {char* make; char* model; char* serial; } ;
struct sway_output {struct wlr_output* wlr_output; } ;


 int snprintf (char*,size_t,char*,char*,char*,char*) ;

void output_get_identifier(char *identifier, size_t len,
  struct sway_output *output) {
 struct wlr_output *wlr_output = output->wlr_output;
 snprintf(identifier, len, "%s %s %s", wlr_output->make, wlr_output->model,
  wlr_output->serial);
}
