
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int process_switches (int,char**) ;
 int showhelp () ;

int main(int argc,char* argv[])
{
    if(argc==1 || argc>3)
    {
  showhelp();

  return 1;
    }

 return process_switches(argc,argv);
}
