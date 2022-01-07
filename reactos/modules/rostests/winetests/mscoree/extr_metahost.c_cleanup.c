
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeLibrary (int ) ;
 int ICLRMetaHost_Release (int ) ;
 int hmscoree ;
 int metahost ;

__attribute__((used)) static void cleanup(void)
{
    ICLRMetaHost_Release(metahost);

    FreeLibrary(hmscoree);
}
