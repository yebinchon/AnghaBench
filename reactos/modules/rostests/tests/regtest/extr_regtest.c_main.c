
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int AllocConsole () ;
 void* GetStdHandle (int ) ;
 void* InputHandle ;
 void* OutputHandle ;
 int ReadConsoleA (void*,char*,int,int *,int *) ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int dprintf (char*) ;
 int test1 () ;
 int test2 () ;
 int test3 () ;
 int test4 () ;
 int test5 () ;
 int test6 () ;
 int test7 () ;
 int test8 () ;
 int test9 () ;

int main(int argc, char* argv[])
{
 char Buffer[10];
 DWORD Result;

  AllocConsole();
  InputHandle = GetStdHandle(STD_INPUT_HANDLE);
  OutputHandle = GetStdHandle(STD_OUTPUT_HANDLE);
  while(1)
  {
    dprintf("choose test :\n");
    dprintf("  0=Exit\n");
    dprintf("  1=Ntxxx read functions\n");
    dprintf("  2=Ntxxx write functions : volatile keys\n");
    dprintf("  3=Ntxxx write functions : non volatile keys\n");
    dprintf("  4=Regxxx functions\n");
    dprintf("  5=FlushKey \n");
    dprintf("  6=Registry link create test\n");
    dprintf("  7=Registry link delete test\n");
    dprintf("  8=Not available\n");
    dprintf("  9=Ntxx read tcp/ip key test\n");
    ReadConsoleA(InputHandle, Buffer, 3, &Result, ((void*)0)) ;
    switch (Buffer[0])
    {
     case '0':
      return(0);
     case '1':
      test1();
      break;
     case '2':
      test2();
      break;
     case '3':
      test3();
      break;
     case '4':
      test4();
      break;
     case '5':
      test5();
      break;
     case '6':
      test6();
      break;
     case '7':
      test7();
      break;





     case '9':
      test9();
      break;
    }
  }
  return 0;
}
