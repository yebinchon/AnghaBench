
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int log_error(int error, const char *message) {
  fprintf(stderr, "%s: %s\n", message, strerror(-error));
  return error;
}
