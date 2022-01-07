
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;


 scalar_t__ GetProcAddress (int ,int ) ;
 int LoadLibraryA (char*) ;
 int hshdocvw ;
 void* pParseURLFromOutsideSourceA ;
 void* pParseURLFromOutsideSourceW ;
 void* pURLSubRegQueryA ;

__attribute__((used)) static void init_functions(void)
{
    hshdocvw = LoadLibraryA("shdocvw.dll");
    pURLSubRegQueryA = (void *) GetProcAddress(hshdocvw, (LPSTR) 151);
    pParseURLFromOutsideSourceA = (void *) GetProcAddress(hshdocvw, (LPSTR) 169);
    pParseURLFromOutsideSourceW = (void *) GetProcAddress(hshdocvw, (LPSTR) 170);
}
