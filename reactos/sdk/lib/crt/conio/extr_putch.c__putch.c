
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 scalar_t__ WriteFile (int ,int*,int,int*,int *) ;

int _putch(int c)
{
  DWORD NumberOfCharsWritten;

  if (WriteFile(GetStdHandle(STD_OUTPUT_HANDLE),&c,1,&NumberOfCharsWritten,((void*)0))) {
    return -1;
  }
  return NumberOfCharsWritten;
}
