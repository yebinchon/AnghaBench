
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char* strdup (char*) ;

__attribute__((used)) static int spt_copyargs(int argc, char *argv[]) {
 char *tmp;
 int i;

 for (i = 1; i < argc || (i >= argc && argv[i]); i++) {
  if (!argv[i])
   continue;

  if (!(tmp = strdup(argv[i])))
   return errno;

  argv[i] = tmp;
 }

 return 0;
}
