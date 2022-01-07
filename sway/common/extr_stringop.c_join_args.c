
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int sway_assert (int,char*) ;

char *join_args(char **argv, int argc) {
 if (!sway_assert(argc > 0, "argc should be positive")) {
  return ((void*)0);
 }
 int len = 0, i;
 for (i = 0; i < argc; ++i) {
  len += strlen(argv[i]) + 1;
 }
 char *res = malloc(len);
 len = 0;
 for (i = 0; i < argc; ++i) {
  strcpy(res + len, argv[i]);
  len += strlen(argv[i]);
  res[len++] = ' ';
 }
 res[len - 1] = '\0';
 return res;
}
