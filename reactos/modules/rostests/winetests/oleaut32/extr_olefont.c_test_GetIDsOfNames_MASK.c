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
typedef  char WCHAR ;
typedef  int LCID ;

/* Variables and functions */
 int DISPID_FONT_BOLD ; 
 int DISPID_FONT_CHARSET ; 
 int DISPID_FONT_ITALIC ; 
 int DISPID_FONT_NAME ; 
 int DISPID_FONT_SIZE ; 
 int DISPID_FONT_STRIKE ; 
 int DISPID_FONT_UNDER ; 
 int DISPID_FONT_WEIGHT ; 
 int DISPID_UNKNOWN ; 
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_FRENCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  SUBLANG_FRENCH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    WCHAR name_Name[] = {'N','a','m','e',0};
    WCHAR name_Italic[] = {'I','t','a','l','i','c',0};
    WCHAR name_Size[] = {'S','i','z','e',0};
    WCHAR name_Bold[] = {'B','o','l','d',0};
    WCHAR name_Underline[] = {'U','n','d','e','r','l','i','n','e',0};
    WCHAR name_Strikethrough[] = {'S','t','r','i','k','e','t','h','r','o','u','g','h',0};
    WCHAR name_Weight[] = {'W','e','i','g','h','t',0};
    WCHAR name_Charset[] = {'C','h','a','r','s','e','t',0};
    WCHAR name_Foo[] = {'F','o','o',0};
    WCHAR name_nAmE[] = {'n','A','m','E',0};
    WCHAR name_Nom[] = {'N','o','m',0};

    LCID en_us = FUNC1(FUNC0(LANG_ENGLISH,SUBLANG_ENGLISH_US),
                          SORT_DEFAULT);
    LCID fr_fr = FUNC1(FUNC0(LANG_FRENCH,SUBLANG_FRENCH),
                          SORT_DEFAULT);

    /* Test DISPID_FONTs for the various properties. */
    FUNC2(name_Name, "Name", NULL, "", en_us,
                   DISPID_FONT_NAME, 0, S_OK,1);
    FUNC2(name_Size, "Size", NULL, "", en_us,
                   DISPID_FONT_SIZE, 0, S_OK,1);
    FUNC2(name_Bold, "Bold", NULL, "", en_us,
                   DISPID_FONT_BOLD, 0, S_OK,1);
    FUNC2(name_Italic, "Italic", NULL, "", en_us,
                   DISPID_FONT_ITALIC, 0, S_OK,1);
    FUNC2(name_Underline, "Underline", NULL, "", en_us,
                   DISPID_FONT_UNDER, 0, S_OK,1);
    FUNC2(name_Strikethrough, "Strikethrough", NULL, "", en_us,
                   DISPID_FONT_STRIKE, 0, S_OK,1);
    FUNC2(name_Weight, "Weight", NULL, "", en_us,
                   DISPID_FONT_WEIGHT, 0, S_OK,1);
    FUNC2(name_Charset, "Charset", NULL, "", en_us,
                   DISPID_FONT_CHARSET, 0, S_OK,1);

    /* Capitalization doesn't matter. */
    FUNC2(name_nAmE, "nAmE", NULL, "", en_us,
                   DISPID_FONT_NAME, 0, S_OK,1);

    /* Unknown name. */
    FUNC2(name_Foo, "Foo", NULL, "", en_us,
                   DISPID_UNKNOWN, 0, DISP_E_UNKNOWNNAME,1);

    /* Pass several names: first is processed,                */
    /* second gets DISPID_UNKNOWN and doesn't affect retval.  */
    FUNC2(name_Italic, "Italic", name_Name, "Name", en_us,
                   DISPID_FONT_ITALIC, DISPID_UNKNOWN, S_OK,2);
    FUNC2(name_Italic, "Italic", name_Foo, "Foo", en_us,
                   DISPID_FONT_ITALIC, DISPID_UNKNOWN, S_OK,2);

    /* Locale ID has no effect. */
    FUNC2(name_Name, "Name", NULL, "", fr_fr,
                   DISPID_FONT_NAME, 0, S_OK,1);
    FUNC2(name_Nom, "This is not a font", NULL, "", fr_fr,
                   DISPID_UNKNOWN, 0, DISP_E_UNKNOWNNAME,1);

    /* One of the arguments are invalid */
    FUNC2(name_Name, "Name", NULL, "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);
    FUNC2(name_Italic, "Italic", NULL, "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);
    FUNC2(name_Foo, "Foo", NULL, "", en_us,
                   0xdeadbeef, 0xdeadbeef, E_INVALIDARG,0);

    /* Crazy locale ID? */
    FUNC2(name_Name, "Name", NULL, "", -1,
                   DISPID_FONT_NAME, 0, S_OK,1);
}