
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibraryA (char*) ;
 int hMapi32 ;
 void* pCbOfEncoded ;
 void* pDeinitMapiUtil ;
 void* pFBinFromHex ;
 void* pHexFromBin ;
 void* pIsBadBoundedStringPtr ;
 void* pMAPIInitialize ;
 void* pMAPIUninitialize ;
 void* pScInitMapiUtil ;
 void* pSwapPlong ;
 void* pSwapPword ;
 void* pUFromSz ;
 void* pUlFromSzHex ;

__attribute__((used)) static void init_function_pointers(void)
{
    hMapi32 = LoadLibraryA("mapi32.dll");

    pScInitMapiUtil = (void*)GetProcAddress(hMapi32, "ScInitMapiUtil@4");
    pDeinitMapiUtil = (void*)GetProcAddress(hMapi32, "DeinitMapiUtil@0");
    pSwapPword = (void*)GetProcAddress(hMapi32, "SwapPword@8");
    pSwapPlong = (void*)GetProcAddress(hMapi32, "SwapPlong@8");
    pHexFromBin = (void*)GetProcAddress(hMapi32, "HexFromBin@12");
    pFBinFromHex = (void*)GetProcAddress(hMapi32, "FBinFromHex@8");
    pUFromSz = (void*)GetProcAddress(hMapi32, "UFromSz@4");
    pUlFromSzHex = (void*)GetProcAddress(hMapi32, "UlFromSzHex@4");
    pCbOfEncoded = (void*)GetProcAddress(hMapi32, "CbOfEncoded@4");
    pIsBadBoundedStringPtr = (void*)GetProcAddress(hMapi32, "IsBadBoundedStringPtr@8");
    pMAPIInitialize = (void*)GetProcAddress(hMapi32, "MAPIInitialize");
    pMAPIUninitialize = (void*)GetProcAddress(hMapi32, "MAPIUninitialize");
}
