
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GET_PROC (int ) ;
 int GetModuleHandleA (char*) ;
 int GetProductInfo ;
 int RtlGetVersion ;

__attribute__((used)) static void init_function_pointers(void)
{
    HMODULE hmod;

    hmod = GetModuleHandleA("kernel32.dll");

    GET_PROC(GetProductInfo);

    hmod = GetModuleHandleA("ntdll.dll");

    GET_PROC(RtlGetVersion);
}
