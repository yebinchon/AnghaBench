
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMLU ;
typedef scalar_t__ cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int Fail (char*,...) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsMLUalloc (int ,int ) ;
 int * cmsMLUdup (int ,int *) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUgetASCII (int ,int *,char*,char*,char*,int) ;
 int cmsMLUsetASCII (int ,int *,char*,char*,char*) ;
 int cmsMLUsetWide (int ,int *,char*,char*,char*) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 scalar_t__ cmsReadTag (int ,int *,int ) ;
 int cmsSetProfileVersion (int ,int *,double) ;
 int cmsSigProfileDescriptionTag ;
 int cmsWriteTag (int ,int *,int ,int *) ;
 int remove (char*) ;
 int sprintf (char*,char*,scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckMLU(void)
{
    cmsMLU* mlu, *mlu2, *mlu3;
    char Buffer[256], Buffer2[256];
    cmsInt32Number rc = 1;
    cmsInt32Number i;
    cmsHPROFILE h= ((void*)0);


    mlu = cmsMLUalloc(DbgThread(), 0);


    cmsMLUsetWide(DbgThread(), mlu, "en", "US", L"Hello, world");
    cmsMLUsetWide(DbgThread(), mlu, "es", "ES", L"Hola, mundo");
    cmsMLUsetWide(DbgThread(), mlu, "fr", "FR", L"Bonjour, le monde");
    cmsMLUsetWide(DbgThread(), mlu, "ca", "CA", L"Hola, mon");




    cmsMLUgetASCII(DbgThread(), mlu, "en", "US", Buffer, 256);
    if (strcmp(Buffer, "Hello, world") != 0) rc = 0;


    cmsMLUgetASCII(DbgThread(), mlu, "es", "ES", Buffer, 256);
    if (strcmp(Buffer, "Hola, mundo") != 0) rc = 0;


    cmsMLUgetASCII(DbgThread(), mlu, "fr", "FR", Buffer, 256);
    if (strcmp(Buffer, "Bonjour, le monde") != 0) rc = 0;


    cmsMLUgetASCII(DbgThread(), mlu, "ca", "CA", Buffer, 256);
    if (strcmp(Buffer, "Hola, mon") != 0) rc = 0;

    if (rc == 0)
        Fail("Unexpected string '%s'", Buffer);


    cmsMLUfree(DbgThread(), mlu);


    mlu = cmsMLUalloc(DbgThread(), 0);


    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char) (i % 255);
        Lang[1] = (char) (i / 255);
        Lang[2] = 0;

        sprintf(Buffer, "String #%i", i);
        cmsMLUsetASCII(DbgThread(), mlu, Lang, Lang, Buffer);
    }


    mlu2 = cmsMLUdup(DbgThread(), mlu);


    cmsMLUfree(DbgThread(), mlu);


    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char)(i % 255);
        Lang[1] = (char)(i / 255);
        Lang[2] = 0;

        cmsMLUgetASCII(DbgThread(), mlu2, Lang, Lang, Buffer2, 256);
        sprintf(Buffer, "String #%i", i);

        if (strcmp(Buffer, Buffer2) != 0) { rc = 0; break; }
    }

    if (rc == 0)
        Fail("Unexpected string '%s'", Buffer2);



    h = cmsOpenProfileFromFile(DbgThread(), "mlucheck.icc", "w");

    cmsSetProfileVersion(DbgThread(), h, 4.3);

    cmsWriteTag(DbgThread(), h, cmsSigProfileDescriptionTag, mlu2);
    cmsCloseProfile(DbgThread(), h);
    cmsMLUfree(DbgThread(), mlu2);


    h = cmsOpenProfileFromFile(DbgThread(), "mlucheck.icc", "r");

    mlu3 = (cmsMLU *) cmsReadTag(DbgThread(), h, cmsSigProfileDescriptionTag);
    if (mlu3 == ((void*)0)) { Fail("Profile didn't get the MLU\n"); rc = 0; goto Error; }


    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char) (i % 255);
        Lang[1] = (char) (i / 255);
        Lang[2] = 0;

        cmsMLUgetASCII(DbgThread(), mlu3, Lang, Lang, Buffer2, 256);
        sprintf(Buffer, "String #%i", i);

        if (strcmp(Buffer, Buffer2) != 0) { rc = 0; break; }
    }

    if (rc == 0) Fail("Unexpected string '%s'", Buffer2);

Error:

    if (h != ((void*)0)) cmsCloseProfile(DbgThread(), h);
    remove("mlucheck.icc");

    return rc;
}
