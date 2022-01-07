
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int wprintf (char*,char*) ;

void Usage(WCHAR* name)
{
    wprintf(L"Usage: %s testfile\n", name);
}
