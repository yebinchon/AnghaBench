
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct input_config {TYPE_2__* mapped_to_region; int mapped_to; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {struct input_config* input_config; } ;
struct TYPE_7__ {TYPE_1__ handler_context; } ;
struct TYPE_6__ {int width; int height; void* y; void* x; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int MAPPED_TO_REGION ;
 TYPE_2__* calloc (int,int) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char const*) ;
 TYPE_3__* config ;
 int free (TYPE_2__*) ;
 void* strtol (char*,char**,int) ;

struct cmd_results *input_cmd_map_to_region(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "map_to_region", EXPECTED_EQUAL_TO, 4))) {
  return error;
 }
 struct input_config *ic = config->handler_context.input_config;
 if (!ic) {
  return cmd_results_new(CMD_FAILURE, "No input device defined");
 }

 ic->mapped_to = MAPPED_TO_REGION;
 ic->mapped_to_region = calloc(1, sizeof(struct wlr_box));

 const char *errstr;
 char *end;

 ic->mapped_to_region->x = strtol(argv[0], &end, 10);
 if (end[0] != '\0') {
  errstr = "Invalid X coordinate";
  goto error;
 }

 ic->mapped_to_region->y = strtol(argv[1], &end, 10);
 if (end[0] != '\0') {
  errstr = "Invalid Y coordinate";
  goto error;
 }

 ic->mapped_to_region->width = strtol(argv[2], &end, 10);
 if (end[0] != '\0' || ic->mapped_to_region->width < 1) {
  errstr = "Invalid width";
  goto error;
 }

 ic->mapped_to_region->height = strtol(argv[3], &end, 10);
 if (end[0] != '\0' || ic->mapped_to_region->height < 1) {
  errstr = "Invalid height";
  goto error;
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));

error:
 free(ic->mapped_to_region);
 ic->mapped_to_region = ((void*)0);
 return cmd_results_new(CMD_FAILURE, errstr);
}
