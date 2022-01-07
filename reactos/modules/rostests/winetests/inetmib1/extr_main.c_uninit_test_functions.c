
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int FreeLibrary (int ) ;

__attribute__((used)) static void uninit_test_functions(HMODULE mod)
{
    FreeLibrary(mod);
}
