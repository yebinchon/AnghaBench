
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMODULE ;


 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LC_CTYPE ;
 void* __pioinfo ;
 void* p__get_fmode ;
 void* p__set_fmode ;
 void* p__wfopen_s ;
 void* p_fopen_s ;
 int setlocale (int ,char*) ;

__attribute__((used)) static void init(void)
{
    HMODULE hmod = GetModuleHandleA("msvcrt.dll");

    setlocale(LC_CTYPE, "C");

    p_fopen_s = (void*)GetProcAddress(hmod, "fopen_s");
    p__wfopen_s = (void*)GetProcAddress(hmod, "_wfopen_s");
    __pioinfo = (void*)GetProcAddress(hmod, "__pioinfo");
    p__get_fmode = (void*)GetProcAddress(hmod, "_get_fmode");
    p__set_fmode = (void*)GetProcAddress(hmod, "_set_fmode");
}
