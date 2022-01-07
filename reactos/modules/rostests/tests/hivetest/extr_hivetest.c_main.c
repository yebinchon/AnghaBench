
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int AllocConsole () ;
 int CreateKeyTest () ;
 int DeleteKeyTest () ;
 int DeleteValueTest () ;
 int EnumerateKeyTest () ;
 int EnumerateValueTest () ;
 void* GetStdHandle (int ) ;
 void* InputHandle ;
 void* OutputHandle ;
 int ReadConsoleA (void*,char*,int,int *,int *) ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetValueTest1 () ;
 int SetValueTest2 () ;
 int dprintf (char*) ;

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
    dprintf("  0 = Exit\n");
    dprintf("  1 = Create key\n");
    dprintf("  2 = Delete key\n");
    dprintf("  3 = Enumerate key\n");
    dprintf("  4 = Set value (REG_SZ)\n");
    dprintf("  5 = Set value (REG_DWORD)\n");
    dprintf("  6 = Delete value\n");
    dprintf("  7 = Enumerate value\n");
    ReadConsoleA(InputHandle, Buffer, 3, &Result, ((void*)0)) ;
    switch (Buffer[0])
    {
     case '0':
      return(0);

     case '1':
      CreateKeyTest();
      break;

     case '2':
      DeleteKeyTest();
      break;

     case '3':
      EnumerateKeyTest();
      break;

     case '4':
      SetValueTest1();
      break;

     case '5':
      SetValueTest2();
      break;

     case '6':
      DeleteValueTest();
      break;

     case '7':
      EnumerateValueTest();
      break;
    }
  }
  return(0);
}
