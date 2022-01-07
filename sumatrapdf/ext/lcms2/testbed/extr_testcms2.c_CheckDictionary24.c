
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
typedef int * cmsHANDLE ;
struct TYPE_5__ {int DisplayName; int Value; int Name; } ;
typedef TYPE_1__ cmsDICTentry ;


 int DbgThread () ;
 int Fail (char*,char*) ;
 int cmsDictAddEntry (int ,int *,char*,char*,int *,int *) ;
 int * cmsDictAlloc (int ) ;
 int cmsDictFree (int ,int *) ;
 TYPE_1__* cmsDictGetEntryList (int ,int *) ;
 TYPE_1__* cmsDictNextEntry (int ,TYPE_1__ const*) ;
 int * cmsMLUalloc (int ,int ) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUgetASCII (int ,int ,char*,char*,char*,int) ;
 int cmsMLUsetWide (int ,int *,char*,char*,char*) ;
 int * cmsReadTag (int ,int ,int ) ;
 int cmsSigMetaTag ;
 int cmsWriteTag (int ,int ,int ,int *) ;
 int memcmp (int ,char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckDictionary24(cmsInt32Number Pass, cmsHPROFILE hProfile)
{
    cmsHANDLE hDict;
    const cmsDICTentry* e;
    cmsMLU* DisplayName;
    char Buffer[256];
    cmsInt32Number rc = 1;

    switch (Pass) {

    case 1:
        hDict = cmsDictAlloc(DbgThread());

        DisplayName = cmsMLUalloc(DbgThread(), 0);

        cmsMLUsetWide(DbgThread(), DisplayName, "en", "US", L"Hello, world");
        cmsMLUsetWide(DbgThread(), DisplayName, "es", "ES", L"Hola, mundo");
        cmsMLUsetWide(DbgThread(), DisplayName, "fr", "FR", L"Bonjour, le monde");
        cmsMLUsetWide(DbgThread(), DisplayName, "ca", "CA", L"Hola, mon");

        cmsDictAddEntry(DbgThread(), hDict, L"Name", L"String", DisplayName, ((void*)0));
        cmsMLUfree(DbgThread(), DisplayName);

        cmsDictAddEntry(DbgThread(), hDict, L"Name2", L"12", ((void*)0), ((void*)0));
        if (!cmsWriteTag(DbgThread(), hProfile, cmsSigMetaTag, hDict)) return 0;
        cmsDictFree(DbgThread(), hDict);

        return 1;


    case 2:

        hDict = cmsReadTag(DbgThread(), hProfile, cmsSigMetaTag);
        if (hDict == ((void*)0)) return 0;

        e = cmsDictGetEntryList(DbgThread(), hDict);
        if (memcmp(e ->Name, L"Name2", sizeof(wchar_t) * 5) != 0) return 0;
        if (memcmp(e ->Value, L"12", sizeof(wchar_t) * 2) != 0) return 0;
        e = cmsDictNextEntry(DbgThread(), e);
        if (memcmp(e ->Name, L"Name", sizeof(wchar_t) * 4) != 0) return 0;
        if (memcmp(e ->Value, L"String", sizeof(wchar_t) * 5) != 0) return 0;

        cmsMLUgetASCII(DbgThread(), e->DisplayName, "en", "US", Buffer, 256);
        if (strcmp(Buffer, "Hello, world") != 0) rc = 0;


        cmsMLUgetASCII(DbgThread(), e->DisplayName, "es", "ES", Buffer, 256);
        if (strcmp(Buffer, "Hola, mundo") != 0) rc = 0;


        cmsMLUgetASCII(DbgThread(), e->DisplayName, "fr", "FR", Buffer, 256);
        if (strcmp(Buffer, "Bonjour, le monde") != 0) rc = 0;


        cmsMLUgetASCII(DbgThread(), e->DisplayName, "ca", "CA", Buffer, 256);
        if (strcmp(Buffer, "Hola, mon") != 0) rc = 0;

        if (rc == 0)
            Fail("Unexpected string '%s'", Buffer);
        return 1;

    default:;
    }

    return 0;
}
