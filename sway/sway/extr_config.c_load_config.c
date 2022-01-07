
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaynag_instance {int dummy; } ;
struct sway_config {int dummy; } ;
struct stat {int st_mode; } ;
typedef int FILE ;


 int SWAY_ERROR ;
 int SWAY_INFO ;
 scalar_t__ S_ISDIR (int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int read_config (int *,struct sway_config*,struct swaynag_instance*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int sway_log (int ,char*,...) ;

__attribute__((used)) static bool load_config(const char *path, struct sway_config *config,
  struct swaynag_instance *swaynag) {
 if (path == ((void*)0)) {
  sway_log(SWAY_ERROR, "Unable to find a config file!");
  return 0;
 }

 sway_log(SWAY_INFO, "Loading config from %s", path);

 struct stat sb;
 if (stat(path, &sb) == 0 && S_ISDIR(sb.st_mode)) {
  sway_log(SWAY_ERROR, "%s is a directory not a config file", path);
  return 0;
 }

 FILE *f = fopen(path, "r");
 if (!f) {
  sway_log(SWAY_ERROR, "Unable to open %s for reading", path);
  return 0;
 }

 bool config_load_success = read_config(f, config, swaynag);
 fclose(f);

 if (!config_load_success) {
  sway_log(SWAY_ERROR, "Error(s) loading config!");
 }

 return 1;
}
