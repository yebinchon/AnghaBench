
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct swaynag_instance {int dummy; } ;
struct sway_config {char* current_config_path; TYPE_1__* config_chain; } ;
struct TYPE_3__ {int length; char** items; } ;


 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int free (char*) ;
 int list_add (TYPE_1__*,char*) ;
 int list_del (TYPE_1__*,int) ;
 int load_config (char*,struct sway_config*,struct swaynag_instance*) ;
 char* malloc (int) ;
 char* realpath (char*,int *) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 int sway_log (int ,char*,...) ;

__attribute__((used)) static bool load_include_config(const char *path, const char *parent_dir,
  struct sway_config *config, struct swaynag_instance *swaynag) {

 const char *parent_config = config->current_config_path;

 char *full_path;
 int len = strlen(path);
 if (len >= 1 && path[0] != '/') {
  len = len + strlen(parent_dir) + 2;
  full_path = malloc(len * sizeof(char));
  if (!full_path) {
   sway_log(SWAY_ERROR,
    "Unable to allocate full path to included config");
   return 0;
  }
  snprintf(full_path, len, "%s/%s", parent_dir, path);
 } else {
  full_path = strdup(path);
 }

 char *real_path = realpath(full_path, ((void*)0));
 free(full_path);

 if (real_path == ((void*)0)) {
  sway_log(SWAY_DEBUG, "%s not found.", path);
  return 0;
 }


 int j;
 for (j = 0; j < config->config_chain->length; ++j) {
  char *old_path = config->config_chain->items[j];
  if (strcmp(real_path, old_path) == 0) {
   sway_log(SWAY_DEBUG,
    "%s already included once, won't be included again.",
    real_path);
   free(real_path);
   return 0;
  }
 }

 config->current_config_path = real_path;
 list_add(config->config_chain, real_path);
 int index = config->config_chain->length - 1;

 if (!load_config(real_path, config, swaynag)) {
  free(real_path);
  config->current_config_path = parent_config;
  list_del(config->config_chain, index);
  return 0;
 }


 config->current_config_path = parent_config;
 return 1;
}
