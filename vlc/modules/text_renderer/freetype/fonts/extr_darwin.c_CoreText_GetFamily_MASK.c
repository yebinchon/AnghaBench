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
typedef  int /*<<< orphan*/  const vlc_family_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  family_map; int /*<<< orphan*/  p_families; } ;
typedef  TYPE_2__ filter_sys_t ;
typedef  int /*<<< orphan*/ * CTFontDescriptorRef ;
typedef  int /*<<< orphan*/ * CTFontCollectionRef ;
typedef  int /*<<< orphan*/ * CFStringRef ;
typedef  int /*<<< orphan*/ * CFMutableDictionaryRef ;
typedef  scalar_t__ CFIndex ;
typedef  int /*<<< orphan*/ * CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,void const**,size_t const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  const* FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/ * kCTFontDisplayNameAttribute ; 
 int /*<<< orphan*/ * kCTFontFamilyNameAttribute ; 
 int /*<<< orphan*/ * kCTFontNameAttribute ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  const* FUNC19 (int /*<<< orphan*/ *,char*) ; 

const vlc_family_t *FUNC20(filter_t *p_filter, const char *psz_family)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if (FUNC18(psz_family == NULL)) {
        return NULL;
    }

    char *psz_lc = FUNC12(psz_family);
    if (FUNC18(!psz_lc)) {
        return NULL;
    }

    /* let's double check if we have parsed this family already */
    vlc_family_t *p_family = FUNC19(&p_sys->family_map, psz_lc);
    if (p_family) {
        FUNC14(psz_lc);
        return p_family;
    }

    CTFontCollectionRef coreTextFontCollection = NULL;
    CFArrayRef matchedFontDescriptions = NULL;

    /* we search for family name, display name and name to find them all */
    const size_t numberOfAttributes = 3;
    CTFontDescriptorRef coreTextFontDescriptors[numberOfAttributes];
    CFMutableDictionaryRef coreTextAttributes[numberOfAttributes];
    CFStringRef attributeNames[numberOfAttributes] = {
        kCTFontFamilyNameAttribute,
        kCTFontDisplayNameAttribute,
        kCTFontNameAttribute,
    };

#ifndef NDEBUG
    FUNC16(p_filter, "Creating new family for '%s'", psz_family);
#endif

    CFStringRef familyName = FUNC6(kCFAllocatorDefault,
                                                       psz_family,
                                                       kCFStringEncodingUTF8);
    for (size_t x = 0; x < numberOfAttributes; x++) {
        coreTextAttributes[x] = FUNC4(kCFAllocatorDefault, 0, NULL, NULL);
        FUNC3(coreTextAttributes[x], attributeNames[x], familyName);
        coreTextFontDescriptors[x] = FUNC9(coreTextAttributes[x]);
    }

    CFArrayRef coreTextFontDescriptorsArray = FUNC0(kCFAllocatorDefault,
                                                            (const void **)&coreTextFontDescriptors,
                                                            numberOfAttributes, NULL);

    coreTextFontCollection = FUNC8(coreTextFontDescriptorsArray, 0);
    if (coreTextFontCollection == NULL) {
        FUNC17(p_filter,"CTFontCollectionCreateWithFontDescriptors (1) failed!");
        goto end;
    }

    matchedFontDescriptions = FUNC7(coreTextFontCollection);
    if (matchedFontDescriptions == NULL) {
        FUNC17(p_filter, "CTFontCollectionCreateMatchingFontDescriptors (2) failed!");
        goto end;
    }

    CFIndex numberOfFoundFontDescriptions = FUNC1(matchedFontDescriptions);

    char *path = NULL;

    /* create a new family object */
    p_family = FUNC11(p_filter, psz_lc, &p_sys->p_families, &p_sys->family_map, psz_lc);
    if (FUNC18(!p_family)) {
        goto end;
    }

    for (CFIndex i = 0; i < numberOfFoundFontDescriptions; i++) {
        CTFontDescriptorRef iter = FUNC2(matchedFontDescriptions, i);
        path = FUNC15(iter);

        /* check if the path is empty, which can happen in rare circumstances */
        if (path == NULL || *path == '\0') {
            FUNC10(path);
            continue;
        }

        FUNC13(p_filter, iter, path, p_family);
    }

end:
    if (matchedFontDescriptions != NULL) {
        FUNC5(matchedFontDescriptions);
    }
    if (coreTextFontCollection != NULL) {
        FUNC5(coreTextFontCollection);
    }

    for (size_t x = 0; x < numberOfAttributes; x++) {
        FUNC5(coreTextAttributes[x]);
        FUNC5(coreTextFontDescriptors[x]);
    }

    FUNC5(coreTextFontDescriptorsArray);
    FUNC5(familyName);
    FUNC14(psz_lc);

    return p_family;
}