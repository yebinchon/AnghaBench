
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CoUninitialize () ;
 int ITfCategoryMgr_Release (scalar_t__) ;
 int ITfInputProcessorProfiles_Release (scalar_t__) ;
 int ITfThreadMgr_Release (scalar_t__) ;
 scalar_t__ g_cm ;
 scalar_t__ g_ipp ;
 scalar_t__ g_tm ;

__attribute__((used)) static void cleanup(void)
{
    if (g_ipp)
        ITfInputProcessorProfiles_Release(g_ipp);
    if (g_cm)
        ITfCategoryMgr_Release(g_cm);
    if (g_tm)
        ITfThreadMgr_Release(g_tm);
    CoUninitialize();
}
