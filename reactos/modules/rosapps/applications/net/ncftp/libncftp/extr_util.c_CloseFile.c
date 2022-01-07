
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * stderr ;
 int * stdin ;
 int * stdout ;

void
CloseFile(FILE **f)
{
 if (*f != ((void*)0)) {
  if ((*f != stdout) && (*f != stdin) && (*f != stderr))
   (void) fclose(*f);
  *f = ((void*)0);
 }
}
