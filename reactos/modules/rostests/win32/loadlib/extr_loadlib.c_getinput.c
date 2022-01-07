
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int InputHandle ;
 int ReadConsoleA (int ,char*,int,scalar_t__*,int *) ;

long getinput(char* buf, int buflen)
{
    DWORD result;

    ReadConsoleA(InputHandle, buf, buflen, &result, ((void*)0));
    return (long)result;
}
