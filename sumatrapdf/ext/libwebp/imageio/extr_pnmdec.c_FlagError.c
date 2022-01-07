
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static size_t FlagError(const char flag[]) {
  fprintf(stderr, "PAM header error: flags '%s' already seen.\n", flag);
  return 0;
}
