
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 int TRUE ;
 void* pStiCreateInstance ;
 void* pStiCreateInstanceA ;
 void* pStiCreateInstanceW ;
 scalar_t__ sti_dll ;

__attribute__((used)) static BOOL init_function_pointers(void)
{
    sti_dll = LoadLibraryA("sti.dll");
    if (sti_dll)
    {
        pStiCreateInstance = (void*)
            GetProcAddress(sti_dll, "StiCreateInstance");
        pStiCreateInstanceA = (void*)
            GetProcAddress(sti_dll, "StiCreateInstanceA");
        pStiCreateInstanceW = (void*)
            GetProcAddress(sti_dll, "StiCreateInstanceW");
        return TRUE;
    }
    return FALSE;
}
