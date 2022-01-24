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

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
#ifdef USE_LIBICONV_DLL
    /* test use of dll if $DEFAULT_LIBICONV_DLL was defined. */
    if (setdll(""))
    {
        success("ascii", "ABC", "ascii", "ABC");
        success("ascii", "ABC", "utf-16be", "\x00\x41\x00\x42\x00\x43");
    }
    else
    {
        printf("\nDLL TEST IS SKIPPED\n\n");
    }

    setdll("none");
#endif

    if (FUNC0("ascii", 20127))
    {
        FUNC5("ascii", "ABC", "ascii", "ABC");
        /* MSB is dropped.  Hmm... */
        FUNC5("ascii", "\x80\xFF", "ascii", "\x00\x7F");
    }

    /* unicode (CP1200 CP1201 CP12000 CP12001 CP65001) */
    if (FUNC0("utf-8", 65001)
            && FUNC0("utf-16be", 1201) && FUNC0("utf-16le", 1200)
            && FUNC0("utf-32be", 12001) && FUNC0("utf-32le", 12000)
            )
    {
        /* Test the BOM behavior
         * 1. Remove the BOM when "fromcode" is utf-16 or utf-32.
         * 2. Add the BOM when "tocode" is utf-16 or utf-32.  */
        FUNC5("utf-16", "\xFE\xFF\x01\x02", "utf-16be", "\x01\x02");
        FUNC5("utf-16", "\xFF\xFE\x02\x01", "utf-16be", "\x01\x02");
        FUNC5("utf-32", "\x00\x00\xFE\xFF\x00\x00\x01\x02", "utf-32be", "\x00\x00\x01\x02");
        FUNC5("utf-32", "\xFF\xFE\x00\x00\x02\x01\x00\x00", "utf-32be", "\x00\x00\x01\x02");
        FUNC5("utf-16", "\xFE\xFF\x00\x01", "utf-8", "\x01");
#ifndef GLIB_COMPILATION
        FUNC5("utf-8", "\x01", "utf-16", "\xFE\xFF\x00\x01");
        FUNC5("utf-8", "\x01", "utf-32", "\x00\x00\xFE\xFF\x00\x00\x00\x01");
#else
        success("utf-8", "\x01", "utf-16", "\xFF\xFE\x01\x00");
        success("utf-8", "\x01", "utf-32", "\xFF\xFE\x00\x00\x01\x00\x00\x00");
#endif

        FUNC5("utf-16be", "\xFE\xFF\x01\x02", "utf-16be", "\xFE\xFF\x01\x02");
        FUNC5("utf-16le", "\xFF\xFE\x02\x01", "utf-16be", "\xFE\xFF\x01\x02");
        FUNC5("utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02", "utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02");
        FUNC5("utf-32le", "\xFF\xFE\x00\x00\x02\x01\x00\x00", "utf-32be", "\x00\x00\xFE\xFF\x00\x00\x01\x02");
        FUNC5("utf-16be", "\xFE\xFF\x00\x01", "utf-8", "\xEF\xBB\xBF\x01");
        FUNC5("utf-8", "\xEF\xBB\xBF\x01", "utf-8", "\xEF\xBB\xBF\x01");

        FUNC5("utf-16be", "\x01\x02", "utf-16le", "\x02\x01");
        FUNC5("utf-16le", "\x02\x01", "utf-16be", "\x01\x02");
        FUNC5("utf-16be", "\xFE\xFF", "utf-16le", "\xFF\xFE");
        FUNC5("utf-16le", "\xFF\xFE", "utf-16be", "\xFE\xFF");
        FUNC5("utf-32be", "\x00\x00\x03\x04", "utf-32le", "\x04\x03\x00\x00");
        FUNC5("utf-32le", "\x04\x03\x00\x00", "utf-32be", "\x00\x00\x03\x04");
        FUNC5("utf-32be", "\x00\x00\xFF\xFF", "utf-16be", "\xFF\xFF");
        FUNC5("utf-16be", "\xFF\xFF", "utf-32be", "\x00\x00\xFF\xFF");
        FUNC5("utf-32be", "\x00\x01\x00\x00", "utf-16be", "\xD8\x00\xDC\x00");
        FUNC5("utf-16be", "\xD8\x00\xDC\x00", "utf-32be", "\x00\x01\x00\x00");
        FUNC5("utf-32be", "\x00\x10\xFF\xFF", "utf-16be", "\xDB\xFF\xDF\xFF");
        FUNC5("utf-16be", "\xDB\xFF\xDF\xFF", "utf-32be", "\x00\x10\xFF\xFF");
        FUNC1("utf-32be", "\x00\x11\x00\x00", "utf-16be", "");
        FUNC1("utf-16be", "\xDB\xFF\xE0\x00", "utf-32be", "");
        FUNC5("utf-8", "\xE3\x81\x82", "utf-16be", "\x30\x42");
        FUNC2("utf-8", "\xE3", "utf-16be", "");
    }

    /* Japanese (CP932 CP20932 CP50220 CP50221 CP50222 CP51932) */
    if (FUNC0("cp932", 932)
            && FUNC0("cp20932", 20932) && FUNC0("euc-jp", 51932)
            && FUNC0("cp50220", 50220) && FUNC0("cp50221", 50221)
            && FUNC0("cp50222", 50222) && FUNC0("iso-2022-jp", 50221))
    {
        /* Test the compatibility for each other Japanese codepage.
         * And validate the escape sequence handling for iso-2022-jp. */
        FUNC5("utf-16be", "\xFF\x5E", "cp932", "\x81\x60");
        FUNC5("utf-16be", "\x30\x1C", "cp932", "\x81\x60");
        FUNC5("utf-16be", "\xFF\x5E", "cp932//nocompat", "\x81\x60");
        FUNC1("utf-16be", "\x30\x1C", "cp932//nocompat", "");
        FUNC5("euc-jp", "\xA4\xA2", "utf-16be", "\x30\x42");
        FUNC2("euc-jp", "\xA4\xA2\xA4", "utf-16be", "\x30\x42");
        FUNC1("euc-jp", "\xA4\xA2\xFF\xFF", "utf-16be", "\x30\x42");
        FUNC5("cp932", "\x81\x60", "iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42");
        FUNC5("UTF-16BE", "\xFF\x5E", "iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42");
        FUNC1("UTF-16BE", "\x30\x1C", "iso-2022-jp//nocompat", "");
        FUNC5("UTF-16BE", "\x30\x42\x30\x44", "iso-2022-jp", "\x1B\x24\x42\x24\x22\x24\x24\x1B\x28\x42");
        FUNC5("iso-2022-jp", "\x1B\x24\x42\x21\x41\x1B\x28\x42", "UTF-16BE", "\xFF\x5E");
    }

    /*
     * test for //translit
     * U+FF41 (FULLWIDTH LATIN SMALL LETTER A) <-> U+0062 (LATIN SMALL LETTER A)
     */
    FUNC1("UTF-16BE", "\xFF\x41", "iso-8859-1", "");
    FUNC5("UTF-16BE", "\xFF\x41", "iso-8859-1//translit", "a");

    /*
     * test for //translit
     * Some character, not in "to" encoding -> DEFAULT CHARACTER (maybe "?")
     */
    FUNC1("UTF-16BE", "\x30\x42", "ascii", "");
    FUNC5("UTF-16BE", "\x30\x42", "ascii//translit", "?");

    /*
     * test for //ignore
     */
    FUNC1("UTF-8", "\xFF A \xFF B", "ascii//ignore", " A  B");
    FUNC1("UTF-8", "\xEF\xBC\xA1 A \xEF\xBC\xA2 B", "ascii//ignore", " A  B");
    FUNC1("UTF-8", "\xEF\x01 A \xEF\x02 B", "ascii//ignore", "\x01 A \x02 B");

    /*
     * TODO:
     * Test for state after iconv() failed.
     * Ensure iconv() error is safe and continuable.
     */

    return 0;
}