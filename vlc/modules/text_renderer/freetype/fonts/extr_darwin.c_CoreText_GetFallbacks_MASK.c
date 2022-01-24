#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_family_t ;
typedef  int /*<<< orphan*/  uni_char_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  littleEndianCodePoint ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  family_map; int /*<<< orphan*/  p_families; } ;
typedef  TYPE_2__ filter_sys_t ;
typedef  int /*<<< orphan*/  UInt8 ;
typedef  int /*<<< orphan*/ * CTFontRef ;
typedef  int /*<<< orphan*/ * CTFontDescriptorRef ;
typedef  int /*<<< orphan*/ * CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingUTF32LE ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,char*) ; 

vlc_family_t *FUNC22(filter_t *p_filter, const char *psz_family, uni_char_t codepoint)
{
    filter_sys_t *p_sys = p_filter->p_sys;
    if (FUNC20(psz_family == NULL)) {
        return NULL;
    }

    vlc_family_t *p_family = NULL;
    CFStringRef postScriptFallbackFontname = NULL;
    CTFontDescriptorRef fallbackFontDescriptor = NULL;
    char *psz_lc_fallback = NULL;
    char *psz_fontPath = NULL;

    CFStringRef familyName = FUNC3(kCFAllocatorDefault,
                                                       psz_family,
                                                       kCFStringEncodingUTF8);
    CTFontRef font = FUNC7(familyName, 0, NULL);
    uint32_t littleEndianCodePoint = FUNC11(codepoint);
    CFStringRef codepointString = FUNC2(kCFAllocatorDefault,
                                                          (const UInt8 *)&littleEndianCodePoint,
                                                          sizeof(littleEndianCodePoint),
                                                          kCFStringEncodingUTF32LE,
                                                          false);
    CTFontRef fallbackFont = FUNC6(font, codepointString, FUNC0(0,1));
    CFStringRef fallbackFontFamilyName = FUNC4(fallbackFont);

    /* create a new family object */
    char *psz_fallbackFamilyName = FUNC9(fallbackFontFamilyName, kCFStringEncodingUTF8);
    if (psz_fallbackFamilyName == NULL) {
        FUNC17(p_filter, "Failed to convert font family name CFString to C string");
        goto done;
    }
#ifndef NDEBUG
    FUNC16(p_filter, "Will deploy fallback font '%s'", psz_fallbackFamilyName);
#endif

    psz_lc_fallback = FUNC12(psz_fallbackFamilyName);

    p_family = FUNC21(&p_sys->family_map, psz_lc_fallback);
    if (p_family) {
        goto done;
    }

    p_family = FUNC10(p_filter, psz_lc_fallback, &p_sys->p_families, &p_sys->family_map, psz_lc_fallback);
    if (FUNC20(!p_family)) {
        goto done;
    }

    postScriptFallbackFontname = FUNC5(fallbackFont);
    fallbackFontDescriptor = FUNC8(postScriptFallbackFontname, 0.);
    psz_fontPath = FUNC15(fallbackFontDescriptor);

    /* check if the path is empty, which can happen in rare circumstances */
    if (psz_fontPath != NULL) {
        if (FUNC18("", psz_fontPath) == 0) {
            goto done;
        }
    } else {
        goto done;
    }

    FUNC13(p_filter, fallbackFontDescriptor, FUNC19(psz_fontPath), p_family);

done:
    FUNC1(familyName);
    FUNC1(font);
    FUNC1(codepointString);
    FUNC1(fallbackFont);
    FUNC1(fallbackFontFamilyName);
    FUNC14(psz_fallbackFamilyName);
    FUNC14(psz_lc_fallback);
    FUNC14(psz_fontPath);
    if (postScriptFallbackFontname != NULL)
        FUNC1(postScriptFallbackFontname);
    if (fallbackFontDescriptor != NULL)
        FUNC1(fallbackFontDescriptor);
    return p_family;
}