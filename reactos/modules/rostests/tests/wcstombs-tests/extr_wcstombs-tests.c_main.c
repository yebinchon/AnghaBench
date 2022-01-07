
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int CRT_Tests () ;
 int Win32_Tests (int *) ;

int main()
{
    BOOL UsedDefaultChar;

    CRT_Tests();



    Win32_Tests(((void*)0));
    Win32_Tests(&UsedDefaultChar);

    return 0;
}
