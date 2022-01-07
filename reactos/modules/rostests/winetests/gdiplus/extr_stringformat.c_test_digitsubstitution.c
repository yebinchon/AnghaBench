
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringDigitSubstitute ;
typedef int LANGID ;
typedef int GpStringFormat ;
typedef int GpStatus ;


 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatDigitSubstitution (int *,int *,int *) ;
 int GdipSetStringFormatDigitSubstitution (int *,int ,int ) ;
 int InvalidParameter ;
 int LANG_CHINESE ;
 int LANG_NEUTRAL ;
 int LANG_RUSSIAN ;
 int MAKELANGID (int ,int ) ;
 int Ok ;
 int SUBLANG_CHINESE_TRADITIONAL ;
 int StringDigitSubstituteNone ;
 int StringDigitSubstituteUser ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_digitsubstitution(void)
{
    GpStringFormat *format;
    GpStatus stat;
    StringDigitSubstitute digitsub;
    LANGID digitlang;

    stat = GdipCreateStringFormat(0, LANG_RUSSIAN, &format);
    expect(Ok, stat);


    stat = GdipGetStringFormatDigitSubstitution(((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatDigitSubstitution(format, ((void*)0), ((void*)0));
    expect(Ok, stat);
    stat = GdipGetStringFormatDigitSubstitution(((void*)0), &digitlang, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatDigitSubstitution(((void*)0), ((void*)0), &digitsub);
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatDigitSubstitution(((void*)0), &digitlang, &digitsub);
    expect(InvalidParameter, stat);
    stat = GdipSetStringFormatDigitSubstitution(((void*)0), LANG_NEUTRAL, StringDigitSubstituteNone);
    expect(InvalidParameter, stat);


    stat = GdipGetStringFormatDigitSubstitution(format, &digitlang, &digitsub);
    expect(Ok, stat);
    expect(StringDigitSubstituteUser, digitsub);
    expect(LANG_NEUTRAL, digitlang);

    digitsub = StringDigitSubstituteNone;
    stat = GdipGetStringFormatDigitSubstitution(format, ((void*)0), &digitsub);
    expect(Ok, stat);
    expect(StringDigitSubstituteUser, digitsub);

    digitlang = LANG_RUSSIAN;
    stat = GdipGetStringFormatDigitSubstitution(format, &digitlang, ((void*)0));
    expect(Ok, stat);
    expect(LANG_NEUTRAL, digitlang);


    stat = GdipSetStringFormatDigitSubstitution(format, MAKELANGID(LANG_CHINESE, SUBLANG_CHINESE_TRADITIONAL),
                                                        StringDigitSubstituteUser);
    expect(Ok, stat);
    digitsub = StringDigitSubstituteNone;
    digitlang = LANG_RUSSIAN;
    stat = GdipGetStringFormatDigitSubstitution(format, &digitlang, &digitsub);
    expect(Ok, stat);
    expect(StringDigitSubstituteUser, digitsub);
    expect(MAKELANGID(LANG_CHINESE, SUBLANG_CHINESE_TRADITIONAL), digitlang);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
