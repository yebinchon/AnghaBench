
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int const vlc_family_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int family_map; int p_families; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int * CTFontDescriptorRef ;
typedef int * CTFontCollectionRef ;
typedef int * CFStringRef ;
typedef int * CFMutableDictionaryRef ;
typedef scalar_t__ CFIndex ;
typedef int * CFArrayRef ;


 int * CFArrayCreate (int ,void const**,size_t const,int *) ;
 scalar_t__ CFArrayGetCount (int *) ;
 int * CFArrayGetValueAtIndex (int *,scalar_t__) ;
 int CFDictionaryAddValue (int *,int *,int *) ;
 int * CFDictionaryCreateMutable (int ,int ,int *,int *) ;
 int CFRelease (int *) ;
 int * CFStringCreateWithCString (int ,char const*,int ) ;
 int * CTFontCollectionCreateMatchingFontDescriptors (int *) ;
 int * CTFontCollectionCreateWithFontDescriptors (int *,int ) ;
 int * CTFontDescriptorCreateWithAttributes (int *) ;
 int FREENULL (char*) ;
 int const* NewFamily (TYPE_1__*,char*,int *,int *,char*) ;
 char* ToLower (char const*) ;
 int addNewFontToFamily (TYPE_1__*,int *,char*,int const*) ;
 int free (char*) ;
 char* getPathForFontDescription (int *) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingUTF8 ;
 int * kCTFontDisplayNameAttribute ;
 int * kCTFontFamilyNameAttribute ;
 int * kCTFontNameAttribute ;
 int msg_Dbg (TYPE_1__*,char*,char const*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int) ;
 int const* vlc_dictionary_value_for_key (int *,char*) ;

const vlc_family_t *CoreText_GetFamily(filter_t *p_filter, const char *psz_family)
{
    filter_sys_t *p_sys = p_filter->p_sys;

    if (unlikely(psz_family == ((void*)0))) {
        return ((void*)0);
    }

    char *psz_lc = ToLower(psz_family);
    if (unlikely(!psz_lc)) {
        return ((void*)0);
    }


    vlc_family_t *p_family = vlc_dictionary_value_for_key(&p_sys->family_map, psz_lc);
    if (p_family) {
        free(psz_lc);
        return p_family;
    }

    CTFontCollectionRef coreTextFontCollection = ((void*)0);
    CFArrayRef matchedFontDescriptions = ((void*)0);


    const size_t numberOfAttributes = 3;
    CTFontDescriptorRef coreTextFontDescriptors[numberOfAttributes];
    CFMutableDictionaryRef coreTextAttributes[numberOfAttributes];
    CFStringRef attributeNames[numberOfAttributes] = {
        kCTFontFamilyNameAttribute,
        kCTFontDisplayNameAttribute,
        kCTFontNameAttribute,
    };


    msg_Dbg(p_filter, "Creating new family for '%s'", psz_family);


    CFStringRef familyName = CFStringCreateWithCString(kCFAllocatorDefault,
                                                       psz_family,
                                                       kCFStringEncodingUTF8);
    for (size_t x = 0; x < numberOfAttributes; x++) {
        coreTextAttributes[x] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, ((void*)0), ((void*)0));
        CFDictionaryAddValue(coreTextAttributes[x], attributeNames[x], familyName);
        coreTextFontDescriptors[x] = CTFontDescriptorCreateWithAttributes(coreTextAttributes[x]);
    }

    CFArrayRef coreTextFontDescriptorsArray = CFArrayCreate(kCFAllocatorDefault,
                                                            (const void **)&coreTextFontDescriptors,
                                                            numberOfAttributes, ((void*)0));

    coreTextFontCollection = CTFontCollectionCreateWithFontDescriptors(coreTextFontDescriptorsArray, 0);
    if (coreTextFontCollection == ((void*)0)) {
        msg_Warn(p_filter,"CTFontCollectionCreateWithFontDescriptors (1) failed!");
        goto end;
    }

    matchedFontDescriptions = CTFontCollectionCreateMatchingFontDescriptors(coreTextFontCollection);
    if (matchedFontDescriptions == ((void*)0)) {
        msg_Warn(p_filter, "CTFontCollectionCreateMatchingFontDescriptors (2) failed!");
        goto end;
    }

    CFIndex numberOfFoundFontDescriptions = CFArrayGetCount(matchedFontDescriptions);

    char *path = ((void*)0);


    p_family = NewFamily(p_filter, psz_lc, &p_sys->p_families, &p_sys->family_map, psz_lc);
    if (unlikely(!p_family)) {
        goto end;
    }

    for (CFIndex i = 0; i < numberOfFoundFontDescriptions; i++) {
        CTFontDescriptorRef iter = CFArrayGetValueAtIndex(matchedFontDescriptions, i);
        path = getPathForFontDescription(iter);


        if (path == ((void*)0) || *path == '\0') {
            FREENULL(path);
            continue;
        }

        addNewFontToFamily(p_filter, iter, path, p_family);
    }

end:
    if (matchedFontDescriptions != ((void*)0)) {
        CFRelease(matchedFontDescriptions);
    }
    if (coreTextFontCollection != ((void*)0)) {
        CFRelease(coreTextFontCollection);
    }

    for (size_t x = 0; x < numberOfAttributes; x++) {
        CFRelease(coreTextAttributes[x]);
        CFRelease(coreTextFontDescriptors[x]);
    }

    CFRelease(coreTextFontDescriptorsArray);
    CFRelease(familyName);
    free(psz_lc);

    return p_family;
}
