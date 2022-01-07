
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zxdg_output_v1 {int dummy; } ;
struct swaynag_output {TYPE_2__* swaynag; int name; } ;
struct TYPE_4__ {int querying_outputs; struct swaynag_output* output; TYPE_1__* type; } ;
struct TYPE_3__ {char* output; } ;


 int SWAY_DEBUG ;
 scalar_t__ strcmp (char*,char const*) ;
 int strdup (char const*) ;
 int sway_log (int ,char*,char const*,...) ;
 int zxdg_output_v1_destroy (struct zxdg_output_v1*) ;

__attribute__((used)) static void xdg_output_handle_name(void *data,
  struct zxdg_output_v1 *xdg_output, const char *name) {
 struct swaynag_output *swaynag_output = data;
 char *outname = swaynag_output->swaynag->type->output;
 sway_log(SWAY_DEBUG, "Checking against output %s for %s", name, outname);
 if (!swaynag_output->swaynag->output && outname && name
   && strcmp(outname, name) == 0) {
  sway_log(SWAY_DEBUG, "Using output %s", name);
  swaynag_output->swaynag->output = swaynag_output;
 }
 swaynag_output->name = strdup(name);
 zxdg_output_v1_destroy(xdg_output);
 swaynag_output->swaynag->querying_outputs--;
}
