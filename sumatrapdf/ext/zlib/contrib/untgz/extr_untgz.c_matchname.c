
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ExprMatch (char*,char*) ;

int matchname (int arg,int argc,char **argv,char *fname)
{
  if (arg == argc)
    return 1;

  while (arg < argc)
    if (ExprMatch(fname,argv[arg++]))
      return 1;

  return 0;
}
