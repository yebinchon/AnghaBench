
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int time_t ;
typedef int sway_log_importance_t ;
struct tm {int dummy; } ;
typedef int buffer ;


 int STDERR_FILENO ;
 int SWAY_LOG_IMPORTANCE_LAST ;
 scalar_t__ colored ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isatty (int ) ;
 struct tm* localtime_r (int *,struct tm*) ;
 int log_importance ;
 int stderr ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;
 char** verbosity_colors ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void sway_log_stderr(sway_log_importance_t verbosity, const char *fmt,
  va_list args) {
 if (verbosity > log_importance) {
  return;
 }

 struct tm result;
 time_t t = time(((void*)0));
 struct tm *tm_info = localtime_r(&t, &result);
 char buffer[26];


 strftime(buffer, sizeof(buffer), "%F %T - ", tm_info);
 fprintf(stderr, "%s", buffer);

 unsigned c = (verbosity < SWAY_LOG_IMPORTANCE_LAST) ? verbosity :
  SWAY_LOG_IMPORTANCE_LAST - 1;

 if (colored && isatty(STDERR_FILENO)) {
  fprintf(stderr, "%s", verbosity_colors[c]);
 }

 vfprintf(stderr, fmt, args);

 if (colored && isatty(STDERR_FILENO)) {
  fprintf(stderr, "\x1B[0m");
 }
 fprintf(stderr, "\n");
}
