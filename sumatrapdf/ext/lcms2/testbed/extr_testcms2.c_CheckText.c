
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int FALSE ;
 int TRUE ;
 int * cmsMLUalloc (int ,int ) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUgetASCII (int ,int *,char*,char*,char*,int) ;
 int cmsMLUsetASCII (int ,int *,char*,char*,char*) ;
 char* cmsNoCountry ;
 char* cmsNoLanguage ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckText(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsMLU *m, *Pt;
    cmsInt32Number rc;
    char Buffer[256];


    switch (Pass) {

        case 1:
            m = cmsMLUalloc(DbgThread(), 0);
            cmsMLUsetASCII(DbgThread(), m, cmsNoLanguage, cmsNoCountry, "Test test");
            cmsMLUsetASCII(DbgThread(), m, "en", "US", "1 1 1 1");
            cmsMLUsetASCII(DbgThread(), m, "es", "ES", "2 2 2 2");
            cmsMLUsetASCII(DbgThread(), m, "ct", "ES", "3 3 3 3");
            cmsMLUsetASCII(DbgThread(), m, "en", "GB", "444444444");
            rc = cmsWriteTag(DbgThread(), hProfile, tag, m);
            cmsMLUfree(DbgThread(), m);
            return rc;

        case 2:
            Pt = (cmsMLU *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            cmsMLUgetASCII(DbgThread(), Pt, cmsNoLanguage, cmsNoCountry, Buffer, 256);
            if (strcmp(Buffer, "Test test") != 0) return FALSE;
            cmsMLUgetASCII(DbgThread(), Pt, "en", "US", Buffer, 256);
            if (strcmp(Buffer, "1 1 1 1") != 0) return FALSE;
            cmsMLUgetASCII(DbgThread(), Pt, "es", "ES", Buffer, 256);
            if (strcmp(Buffer, "2 2 2 2") != 0) return FALSE;
            cmsMLUgetASCII(DbgThread(), Pt, "ct", "ES", Buffer, 256);
            if (strcmp(Buffer, "3 3 3 3") != 0) return FALSE;
            cmsMLUgetASCII(DbgThread(), Pt, "en", "GB", Buffer, 256);
            if (strcmp(Buffer, "444444444") != 0) return FALSE;
            return TRUE;

        default:
            return 0;
    }
}
