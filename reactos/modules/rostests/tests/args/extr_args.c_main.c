
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AllocConsole () ;
 char* GetCommandLineA () ;
 void* GetStdHandle (int ) ;
 void* InputHandle ;
 void* OutputHandle ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int debug_printf (char*,...) ;
 int printf (char*,char*) ;

int main(int argc, char* argv[])
{
   int i;

   AllocConsole();
   InputHandle = GetStdHandle(STD_INPUT_HANDLE);
   OutputHandle = GetStdHandle(STD_OUTPUT_HANDLE);

   printf("GetCommandLineA() %s\n",GetCommandLineA());
   debug_printf("GetCommandLineA() %s\n",GetCommandLineA());
   debug_printf("argc %d\n", argc);
   for (i=0; i<argc; i++)
     {
        debug_printf("Argv[%d]: %x\n",i,argv[i]);
        debug_printf("Argv[%d]: '%s'\n",i,argv[i]);
     }
   return 0;
}
