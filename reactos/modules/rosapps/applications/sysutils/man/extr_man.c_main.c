
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AnalyzeArgv (char*) ;
 int CloseF () ;
 int NORMAL ;
 scalar_t__ OpenFlag ;
 int SetCl (int ) ;
 int Usage () ;

int
main(int argc, char *argv[])
{

  switch(argc)
    {
     case 1: Usage(); break;
     case 2: AnalyzeArgv(argv[1]);break;
     default: Usage();break;
    }

   if(OpenFlag)CloseF();
   SetCl(NORMAL);
   return 0;
}
