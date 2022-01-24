#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  scalar_t__ cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  cmsSigProfileDescriptionTag ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC16(void)
{
    cmsMLU* mlu, *mlu2, *mlu3;
    char Buffer[256], Buffer2[256];
    cmsInt32Number rc = 1;
    cmsInt32Number i;
    cmsHPROFILE h= NULL;

    // Allocate a MLU structure, no preferred size
    mlu = FUNC3(FUNC0(), 0);

    // Add some localizations
    FUNC8(FUNC0(), mlu, "en", "US", L"Hello, world");
    FUNC8(FUNC0(), mlu, "es", "ES", L"Hola, mundo");
    FUNC8(FUNC0(), mlu, "fr", "FR", L"Bonjour, le monde");
    FUNC8(FUNC0(), mlu, "ca", "CA", L"Hola, mon");


    // Check the returned string for each language

    FUNC6(FUNC0(), mlu, "en", "US", Buffer, 256);
    if (FUNC15(Buffer, "Hello, world") != 0) rc = 0;


    FUNC6(FUNC0(), mlu, "es", "ES", Buffer, 256);
    if (FUNC15(Buffer, "Hola, mundo") != 0) rc = 0;


    FUNC6(FUNC0(), mlu, "fr", "FR", Buffer, 256);
    if (FUNC15(Buffer, "Bonjour, le monde") != 0) rc = 0;


    FUNC6(FUNC0(), mlu, "ca", "CA", Buffer, 256);
    if (FUNC15(Buffer, "Hola, mon") != 0) rc = 0;

    if (rc == 0)
        FUNC1("Unexpected string '%s'", Buffer);

    // So far, so good.
    FUNC5(FUNC0(), mlu);

    // Now for performance, allocate an empty struct
    mlu = FUNC3(FUNC0(), 0);

    // Fill it with several thousands of different lenguages
    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char) (i % 255);
        Lang[1] = (char) (i / 255);
        Lang[2] = 0;

        FUNC14(Buffer, "String #%i", i);
        FUNC7(FUNC0(), mlu, Lang, Lang, Buffer);
    }

    // Duplicate it
    mlu2 = FUNC4(FUNC0(), mlu);

    // Get rid of original
    FUNC5(FUNC0(), mlu);

    // Check all is still in place
    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char)(i % 255);
        Lang[1] = (char)(i / 255);
        Lang[2] = 0;

        FUNC6(FUNC0(), mlu2, Lang, Lang, Buffer2, 256);
        FUNC14(Buffer, "String #%i", i);

        if (FUNC15(Buffer, Buffer2) != 0) { rc = 0; break; }
    }

    if (rc == 0)
        FUNC1("Unexpected string '%s'", Buffer2);

    // Check profile IO

    h = FUNC9(FUNC0(), "mlucheck.icc", "w");

    FUNC11(FUNC0(), h, 4.3);

    FUNC12(FUNC0(), h, cmsSigProfileDescriptionTag, mlu2);
    FUNC2(FUNC0(), h);
    FUNC5(FUNC0(), mlu2);


    h = FUNC9(FUNC0(), "mlucheck.icc", "r");

    mlu3 = (cmsMLU *) FUNC10(FUNC0(), h, cmsSigProfileDescriptionTag);
    if (mlu3 == NULL) { FUNC1("Profile didn't get the MLU\n"); rc = 0; goto Error; }

    // Check all is still in place
    for (i=0; i < 4096; i++) {

        char Lang[3];

        Lang[0] = (char) (i % 255);
        Lang[1] = (char) (i / 255);
        Lang[2] = 0;

        FUNC6(FUNC0(), mlu3, Lang, Lang, Buffer2, 256);
        FUNC14(Buffer, "String #%i", i);

        if (FUNC15(Buffer, Buffer2) != 0) { rc = 0; break; }
    }

    if (rc == 0) FUNC1("Unexpected string '%s'", Buffer2);

Error:

    if (h != NULL) FUNC2(FUNC0(), h);
    FUNC13("mlucheck.icc");

    return rc;
}