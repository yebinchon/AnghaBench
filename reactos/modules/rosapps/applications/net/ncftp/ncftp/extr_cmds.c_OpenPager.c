
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fflush (int *) ;
 char* gPager ;
 int * popen (char*,char*) ;
 int * stdout ;

__attribute__((used)) static FILE *
OpenPager(void)
{
 FILE *fp;
 char *pprog;

 (void) fflush(stdout);
 pprog = gPager;
 fp = popen((pprog[0] == '\0') ? "more" : pprog, "w");
 if (fp == ((void*)0))
  return (stdout);
 return (fp);
}
