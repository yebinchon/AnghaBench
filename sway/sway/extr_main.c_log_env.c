
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log_vars ;


 int SWAY_INFO ;
 int getenv (char const*) ;
 int sway_log (int ,char*,char const*,int ) ;

__attribute__((used)) static void log_env(void) {
 const char *log_vars[] = {
  "LD_LIBRARY_PATH",
  "LD_PRELOAD",
  "PATH",
  "SWAYSOCK",
 };
 for (size_t i = 0; i < sizeof(log_vars) / sizeof(char *); ++i) {
  sway_log(SWAY_INFO, "%s=%s", log_vars[i], getenv(log_vars[i]));
 }
}
