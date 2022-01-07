
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


 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatAlign (int *,int *) ;
 int GdipGetStringFormatDigitSubstitution (int *,int *,int *) ;
 int GdipGetStringFormatFlags (int *,int *) ;
 int GdipGetStringFormatHotkeyPrefix (int *,int *) ;
 int GdipGetStringFormatLineAlign (int *,int *) ;
 int GdipGetStringFormatTabStopCount (int *,int *) ;
 int GdipGetStringFormatTrimming (int *,int *) ;
 int GdipSetStringFormatFlags (int *,int) ;
 int GdipStringFormatGetGenericTypographic (int **) ;
 int HotkeyPrefixNone ;
 int InvalidParameter ;
 int LANG_NEUTRAL ;
 int Ok ;
 int StringAlignmentNear ;
 int StringDigitSubstituteUser ;
 int StringFormatFlagsLineLimit ;
 int StringFormatFlagsNoClip ;
 int StringFormatFlagsNoFitBlackBox ;
 int StringFormatFlagsNoWrap ;
 int StringTrimmingNone ;
 int expect (int,int ) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_getgenerictypographic(void)
{
    GpStringFormat *format, *format2;
    GpStatus stat;
    INT flags;
    INT n;
    StringAlignment align, line_align;
    StringTrimming trimming;
    StringDigitSubstitute digitsub;
    LANGID digitlang;
    INT tabcount;


    stat = GdipStringFormatGetGenericTypographic(((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipStringFormatGetGenericTypographic(&format);
    expect(Ok, stat);

    stat = GdipStringFormatGetGenericTypographic(&format2);
    expect(Ok, stat);
    ok(format == format2, "expected same format object\n");
    stat = GdipDeleteStringFormat(format2);
    expect(Ok, stat);

    GdipGetStringFormatFlags(format, &flags);
    GdipGetStringFormatAlign(format, &align);
    GdipGetStringFormatLineAlign(format, &line_align);
    GdipGetStringFormatHotkeyPrefix(format, &n);
    GdipGetStringFormatTrimming(format, &trimming);
    GdipGetStringFormatDigitSubstitution(format, &digitlang, &digitsub);
    GdipGetStringFormatTabStopCount(format, &tabcount);

    expect((StringFormatFlagsNoFitBlackBox |StringFormatFlagsLineLimit | StringFormatFlagsNoClip),
            flags);
    expect(HotkeyPrefixNone, n);
    expect(StringAlignmentNear, align);
    expect(StringAlignmentNear, line_align);
    expect(StringTrimmingNone, trimming);
    expect(StringDigitSubstituteUser, digitsub);
    expect(LANG_NEUTRAL, digitlang);
    expect(0, tabcount);


    stat = GdipSetStringFormatFlags(format, StringFormatFlagsNoWrap);
    expect(Ok, stat);

    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(StringFormatFlagsNoWrap, flags);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);

    stat = GdipStringFormatGetGenericTypographic(&format);
    expect(Ok, stat);

    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(StringFormatFlagsNoWrap, flags);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
