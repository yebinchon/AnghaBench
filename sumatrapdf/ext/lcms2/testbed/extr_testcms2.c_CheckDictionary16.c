
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
typedef int * cmsHANDLE ;
struct TYPE_5__ {int * Value; int * Name; } ;
typedef TYPE_1__ cmsDICTentry ;


 int DbgThread () ;
 int cmsDictAddEntry (int ,int *,char*,char*,int *,int *) ;
 int * cmsDictAlloc (int ) ;
 int cmsDictFree (int ,int *) ;
 TYPE_1__* cmsDictGetEntryList (int ,int *) ;
 TYPE_1__* cmsDictNextEntry (int ,TYPE_1__ const*) ;
 int * cmsReadTag (int ,int ,int ) ;
 int cmsSigMetaTag ;
 int cmsWriteTag (int ,int ,int ,int *) ;
 int memcmp (int *,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckDictionary16(cmsInt32Number Pass, cmsHPROFILE hProfile)
{
      cmsHANDLE hDict;
      const cmsDICTentry* e;
      switch (Pass) {

        case 1:
            hDict = cmsDictAlloc(DbgThread());
            cmsDictAddEntry(DbgThread(), hDict, L"Name0", ((void*)0), ((void*)0), ((void*)0));
            cmsDictAddEntry(DbgThread(), hDict, L"Name1", L"", ((void*)0), ((void*)0));
            cmsDictAddEntry(DbgThread(), hDict, L"Name", L"String", ((void*)0), ((void*)0));
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
             e = cmsDictNextEntry(DbgThread(), e);
             if (memcmp(e ->Name, L"Name1", sizeof(wchar_t) *5) != 0) return 0;
             if (e ->Value == ((void*)0)) return 0;
             if (*e->Value != 0) return 0;
             e = cmsDictNextEntry(DbgThread(), e);
             if (memcmp(e ->Name, L"Name0", sizeof(wchar_t) * 5) != 0) return 0;
             if (e ->Value != ((void*)0)) return 0;
             return 1;


        default:;
    }

    return 0;
}
