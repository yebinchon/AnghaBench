
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HMODULE ;


 scalar_t__ GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 int ok (int,char*) ;
 void* pScriptGetFontFeatureTags ;
 void* pScriptGetFontLanguageTags ;
 void* pScriptGetFontScriptTags ;
 void* pScriptItemizeOpenType ;
 void* pScriptShapeOpenType ;

__attribute__((used)) static void init_tests(void)
{
    HMODULE module = GetModuleHandleA("usp10.dll");

    ok(module != 0, "Expected usp10.dll to be loaded.\n");

    pScriptItemizeOpenType = (void *)GetProcAddress(module, "ScriptItemizeOpenType");
    pScriptShapeOpenType = (void *)GetProcAddress(module, "ScriptShapeOpenType");
    pScriptGetFontScriptTags = (void *)GetProcAddress(module, "ScriptGetFontScriptTags");
    pScriptGetFontLanguageTags = (void *)GetProcAddress(module, "ScriptGetFontLanguageTags");
    pScriptGetFontFeatureTags = (void *)GetProcAddress(module, "ScriptGetFontFeatureTags");
}
