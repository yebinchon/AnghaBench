
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int TRUE ;
 int hAdvPack ;
 void* pCloseINFEngine ;
 void* pDelNode ;
 void* pGetVersionFromFile ;
 void* pOpenINFEngine ;
 void* pSetPerUserSecValues ;
 void* pTranslateInfString ;
 void* pTranslateInfStringEx ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_function_pointers(void)
{
    hAdvPack = LoadLibraryA("advpack.dll");

    if (!hAdvPack)
        return FALSE;

    pCloseINFEngine = (void*)GetProcAddress(hAdvPack, "CloseINFEngine");
    pDelNode = (void *)GetProcAddress(hAdvPack, "DelNode");
    pGetVersionFromFile = (void *)GetProcAddress(hAdvPack, "GetVersionFromFile");
    pOpenINFEngine = (void*)GetProcAddress(hAdvPack, "OpenINFEngine");
    pSetPerUserSecValues = (void*)GetProcAddress(hAdvPack, "SetPerUserSecValues");
    pTranslateInfString = (void *)GetProcAddress(hAdvPack, "TranslateInfString");
    pTranslateInfStringEx = (void*)GetProcAddress(hAdvPack, "TranslateInfStringEx");

    if (!pCloseINFEngine || !pDelNode || !pGetVersionFromFile ||
        !pOpenINFEngine || !pSetPerUserSecValues || !pTranslateInfString)
    {
        win_skip("Needed functions are not available\n");
        FreeLibrary(hAdvPack);
        return FALSE;
    }

    return TRUE;
}
