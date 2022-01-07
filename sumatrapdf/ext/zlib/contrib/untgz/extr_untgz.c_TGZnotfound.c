
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* TGZsuffix ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 char* prog ;
 int stderr ;

void TGZnotfound (const char *arcname)
{
  int i;

  fprintf(stderr,"%s: Couldn't find ",prog);
  for (i=0;TGZsuffix[i];i++)
    fprintf(stderr,(TGZsuffix[i+1]) ? "%s%s, " : "or %s%s\n",
            arcname,
            TGZsuffix[i]);
  exit(1);
}
