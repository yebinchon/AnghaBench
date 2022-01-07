
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsBool ;


 char* MemStr (scalar_t__) ;
 scalar_t__ TotalMemory ;
 int printf (char*,...) ;

void TestMemoryLeaks(cmsBool ok)
{
    if (TotalMemory > 0)
        printf("Ok, but %s are left!\n", MemStr(TotalMemory));
    else {
        if (ok) printf("Ok.\n");
    }
}
