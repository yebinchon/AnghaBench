
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_family_t ;
typedef int uni_char_t ;
typedef int uint32_t ;
typedef int littleEndianCodePoint ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int family_map; int p_families; } ;
typedef TYPE_2__ filter_sys_t ;
typedef int UInt8 ;
typedef int * CTFontRef ;
typedef int * CTFontDescriptorRef ;
typedef int * CFStringRef ;


 int CFRangeMake (int ,int) ;
 int CFRelease (int *) ;
 int * CFStringCreateWithBytes (int ,int const*,int,int ,int) ;
 int * CFStringCreateWithCString (int ,char const*,int ) ;
 int * CTFontCopyFamilyName (int *) ;
 int * CTFontCopyPostScriptName (int *) ;
 int * CTFontCreateForString (int *,int *,int ) ;
 int * CTFontCreateWithName (int *,int ,int *) ;
 int * CTFontDescriptorCreateWithNameAndSize (int *,int) ;
 char* FromCFString (int *,int ) ;
 int * NewFamily (TYPE_1__*,char*,int *,int *,char*) ;
 int OSSwapHostToLittleInt32 (int ) ;
 char* ToLower (char*) ;
 int addNewFontToFamily (TYPE_1__*,int *,int ,int *) ;
 int free (char*) ;
 char* getPathForFontDescription (int *) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingUTF32LE ;
 int kCFStringEncodingUTF8 ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 scalar_t__ unlikely (int) ;
 int * vlc_dictionary_value_for_key (int *,char*) ;

vlc_family_t *CoreText_GetFallbacks(filter_t *p_filter, const char *psz_family, uni_char_t codepoint)
{
    filter_sys_t *p_sys = p_filter->p_sys;
    if (unlikely(psz_family == ((void*)0))) {
        return ((void*)0);
    }

    vlc_family_t *p_family = ((void*)0);
    CFStringRef postScriptFallbackFontname = ((void*)0);
    CTFontDescriptorRef fallbackFontDescriptor = ((void*)0);
    char *psz_lc_fallback = ((void*)0);
    char *psz_fontPath = ((void*)0);

    CFStringRef familyName = CFStringCreateWithCString(kCFAllocatorDefault,
                                                       psz_family,
                                                       kCFStringEncodingUTF8);
    CTFontRef font = CTFontCreateWithName(familyName, 0, ((void*)0));
    uint32_t littleEndianCodePoint = OSSwapHostToLittleInt32(codepoint);
    CFStringRef codepointString = CFStringCreateWithBytes(kCFAllocatorDefault,
                                                          (const UInt8 *)&littleEndianCodePoint,
                                                          sizeof(littleEndianCodePoint),
                                                          kCFStringEncodingUTF32LE,
                                                          0);
    CTFontRef fallbackFont = CTFontCreateForString(font, codepointString, CFRangeMake(0,1));
    CFStringRef fallbackFontFamilyName = CTFontCopyFamilyName(fallbackFont);


    char *psz_fallbackFamilyName = FromCFString(fallbackFontFamilyName, kCFStringEncodingUTF8);
    if (psz_fallbackFamilyName == ((void*)0)) {
        msg_Warn(p_filter, "Failed to convert font family name CFString to C string");
        goto done;
    }

    msg_Dbg(p_filter, "Will deploy fallback font '%s'", psz_fallbackFamilyName);


    psz_lc_fallback = ToLower(psz_fallbackFamilyName);

    p_family = vlc_dictionary_value_for_key(&p_sys->family_map, psz_lc_fallback);
    if (p_family) {
        goto done;
    }

    p_family = NewFamily(p_filter, psz_lc_fallback, &p_sys->p_families, &p_sys->family_map, psz_lc_fallback);
    if (unlikely(!p_family)) {
        goto done;
    }

    postScriptFallbackFontname = CTFontCopyPostScriptName(fallbackFont);
    fallbackFontDescriptor = CTFontDescriptorCreateWithNameAndSize(postScriptFallbackFontname, 0.);
    psz_fontPath = getPathForFontDescription(fallbackFontDescriptor);


    if (psz_fontPath != ((void*)0)) {
        if (strcmp("", psz_fontPath) == 0) {
            goto done;
        }
    } else {
        goto done;
    }

    addNewFontToFamily(p_filter, fallbackFontDescriptor, strdup(psz_fontPath), p_family);

done:
    CFRelease(familyName);
    CFRelease(font);
    CFRelease(codepointString);
    CFRelease(fallbackFont);
    CFRelease(fallbackFontFamilyName);
    free(psz_fallbackFamilyName);
    free(psz_lc_fallback);
    free(psz_fontPath);
    if (postScriptFallbackFontname != ((void*)0))
        CFRelease(postScriptFallbackFontname);
    if (fallbackFontDescriptor != ((void*)0))
        CFRelease(fallbackFontDescriptor);
    return p_family;
}
