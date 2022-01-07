
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int InputHandle ;
 int ReadConsoleA (int ,char*,int,int *,int *) ;

DWORD GetInput(char* Buffer, int buflen)
{
    DWORD Result;

    ReadConsoleA(InputHandle, Buffer, buflen, &Result, ((void*)0));
    return Result;
}
