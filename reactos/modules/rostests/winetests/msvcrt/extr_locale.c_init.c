
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 void* p___mb_cur_max_func ;
 void* p__crtGetStringTypeW ;
 void* p__p___mb_cur_max ;
 void* pmemcpy_s ;

__attribute__((used)) static void init(void)
{
    HMODULE hmod = GetModuleHandleA("msvcrt.dll");

    p__crtGetStringTypeW = (void*)GetProcAddress(hmod, "__crtGetStringTypeW");
    pmemcpy_s = (void*)GetProcAddress(hmod, "memcpy_s");
    p___mb_cur_max_func = (void*)GetProcAddress(hmod, "___mb_cur_max_func");
    p__p___mb_cur_max = (void*)GetProcAddress(hmod, "__p___mb_cur_max");
}
