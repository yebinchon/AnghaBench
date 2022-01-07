
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStringFormat ;
typedef int GpStatus ;


 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatFlags (int *,int *) ;
 int GdipSetStringFormatFlags (int *,int) ;
 int InvalidParameter ;
 int LANG_NEUTRAL ;
 int Ok ;
 int StringFormatFlagsDirectionRightToLeft ;
 int StringFormatFlagsDirectionVertical ;
 int StringFormatFlagsDisplayFormatControl ;
 int StringFormatFlagsMeasureTrailingSpaces ;
 int StringFormatFlagsNoFitBlackBox ;
 int StringFormatFlagsNoFontFallback ;
 int expect (int,int ) ;

__attribute__((used)) static void test_stringformatflags(void)
{
    GpStringFormat *format;
    GpStatus stat;

    INT flags;

    stat = GdipCreateStringFormat(0, LANG_NEUTRAL, &format);
    expect(Ok, stat);


    stat = GdipSetStringFormatFlags(((void*)0), 0);
    expect(InvalidParameter, stat);

    stat = GdipSetStringFormatFlags(format, 0);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(0, flags);


    stat = GdipSetStringFormatFlags(format, StringFormatFlagsDirectionRightToLeft);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(StringFormatFlagsDirectionRightToLeft, flags);

    stat = GdipSetStringFormatFlags(format, StringFormatFlagsNoFontFallback);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(StringFormatFlagsNoFontFallback, flags);


    stat = GdipSetStringFormatFlags(format, StringFormatFlagsDirectionVertical
        | StringFormatFlagsNoFitBlackBox);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect((StringFormatFlagsDirectionVertical
        | StringFormatFlagsNoFitBlackBox), flags);

    stat = GdipSetStringFormatFlags(format, StringFormatFlagsDisplayFormatControl
        | StringFormatFlagsMeasureTrailingSpaces);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect((StringFormatFlagsDisplayFormatControl
        | StringFormatFlagsMeasureTrailingSpaces), flags);


    stat = GdipSetStringFormatFlags(format, 0xdeadbeef);
    expect(Ok, stat);
    stat = GdipGetStringFormatFlags(format, &flags);
    expect(Ok, stat);
    expect(0xdeadbeef, flags);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
