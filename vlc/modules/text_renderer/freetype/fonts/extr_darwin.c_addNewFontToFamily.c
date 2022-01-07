
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_family_t ;
typedef int filter_t ;
typedef int CTFontDescriptorRef ;
typedef int CFNumberRef ;
typedef int CFDictionaryRef ;


 int CFDictionaryGetValue (int ,int ) ;
 int CFNumberGetValue (int ,int ,float*) ;
 int CFRelease (int ) ;
 int CTFontDescriptorCopyAttribute (int ,int ) ;
 int NewFont (char*,int ,int,int,int *) ;
 int VLC_UNUSED (int *) ;
 int kCFNumberFloatType ;
 int kCTFontSlantTrait ;
 int kCTFontTraitsAttribute ;
 int kCTFontWeightTrait ;
 int msg_Dbg (int *,char*,int,int,char*) ;

void addNewFontToFamily(filter_t *p_filter, CTFontDescriptorRef iter, char *path, vlc_family_t *p_family)
{
    bool b_bold = 0;
    bool b_italic = 0;
    CFDictionaryRef fontTraits = CTFontDescriptorCopyAttribute(iter, kCTFontTraitsAttribute);
    CFNumberRef trait = CFDictionaryGetValue(fontTraits, kCTFontWeightTrait);
    float traitValue = 0.;
    CFNumberGetValue(trait, kCFNumberFloatType, &traitValue);
    b_bold = traitValue > 0.23;
    trait = CFDictionaryGetValue(fontTraits, kCTFontSlantTrait);
    traitValue = 0.;
    CFNumberGetValue(trait, kCFNumberFloatType, &traitValue);
    b_italic = traitValue > 0.03;


    msg_Dbg(p_filter, "New font: bold %i italic %i path '%s'", b_bold, b_italic, path);



    NewFont(path, 0, b_bold, b_italic, p_family);

    CFRelease(fontTraits);
}
