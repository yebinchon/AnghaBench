
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringTrimming ;
typedef int StringDigitSubstitute ;
typedef int StringAlignment ;
typedef int LANGID ;
typedef int INT ;
typedef int GpStringFormat ;
typedef int GpStatus ;


 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatAlign (int *,int *) ;
 int GdipGetStringFormatDigitSubstitution (int *,int *,int *) ;
 int GdipGetStringFormatHotkeyPrefix (int *,int *) ;
 int GdipGetStringFormatLineAlign (int *,int *) ;
 int GdipGetStringFormatMeasurableCharacterRangeCount (int *,int *) ;
 int GdipGetStringFormatTrimming (int *,int *) ;
 int HotkeyPrefixNone ;
 int LANG_NEUTRAL ;
 int Ok ;
 int StringAlignmentNear ;
 int StringDigitSubstituteUser ;
 int StringTrimmingCharacter ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_constructor(void)
{
    GpStringFormat *format;
    GpStatus stat;
    INT n, count;
    StringAlignment align, line_align;
    StringTrimming trimming;
    StringDigitSubstitute digitsub;
    LANGID digitlang;

    stat = GdipCreateStringFormat(0, LANG_NEUTRAL, &format);
    expect(Ok, stat);

    GdipGetStringFormatAlign(format, &align);
    GdipGetStringFormatLineAlign(format, &line_align);
    GdipGetStringFormatHotkeyPrefix(format, &n);
    GdipGetStringFormatTrimming(format, &trimming);
    GdipGetStringFormatDigitSubstitution(format, &digitlang, &digitsub);
    GdipGetStringFormatMeasurableCharacterRangeCount(format, &count);

    expect(HotkeyPrefixNone, n);
    expect(StringAlignmentNear, align);
    expect(StringAlignmentNear, line_align);
    expect(StringTrimmingCharacter, trimming);
    expect(StringDigitSubstituteUser, digitsub);
    expect(LANG_NEUTRAL, digitlang);
    expect(0, count);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
