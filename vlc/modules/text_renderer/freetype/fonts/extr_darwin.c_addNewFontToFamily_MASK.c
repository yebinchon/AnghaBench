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
typedef  int /*<<< orphan*/  vlc_family_t ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  CTFontDescriptorRef ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  CFDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFNumberFloatType ; 
 int /*<<< orphan*/  kCTFontSlantTrait ; 
 int /*<<< orphan*/  kCTFontTraitsAttribute ; 
 int /*<<< orphan*/  kCTFontWeightTrait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int,char*) ; 

void FUNC7(filter_t *p_filter, CTFontDescriptorRef iter, char *path, vlc_family_t *p_family)
{
    bool b_bold = false;
    bool b_italic = false;
    CFDictionaryRef fontTraits = FUNC3(iter, kCTFontTraitsAttribute);
    CFNumberRef trait = FUNC0(fontTraits, kCTFontWeightTrait);
    float traitValue = 0.;
    FUNC1(trait, kCFNumberFloatType, &traitValue);
    b_bold = traitValue > 0.23;
    trait = FUNC0(fontTraits, kCTFontSlantTrait);
    traitValue = 0.;
    FUNC1(trait, kCFNumberFloatType, &traitValue);
    b_italic = traitValue > 0.03;

#ifndef NDEBUG
    FUNC6(p_filter, "New font: bold %i italic %i path '%s'", b_bold, b_italic, path);
#else
    VLC_UNUSED(p_filter);
#endif
    FUNC4(path, 0, b_bold, b_italic, p_family);

    FUNC2(fontTraits);
}