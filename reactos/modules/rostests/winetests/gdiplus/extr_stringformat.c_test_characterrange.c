
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStringFormat ;
typedef int GpStatus ;
typedef int CharacterRange ;


 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatMeasurableCharacterRangeCount (int *,int*) ;
 int GdipSetStringFormatMeasurableCharacterRanges (int *,int,int *) ;
 int InvalidParameter ;
 int LANG_NEUTRAL ;
 int Ok ;
 int expect (int,int) ;

__attribute__((used)) static void test_characterrange(void)
{
    CharacterRange ranges[3];
    INT count;
    GpStringFormat* format;
    GpStatus stat;

    stat = GdipCreateStringFormat(0, LANG_NEUTRAL, &format);
    expect(Ok, stat);
    stat = GdipSetStringFormatMeasurableCharacterRanges(((void*)0), 3, ranges);
    expect(InvalidParameter, stat);
    stat = GdipSetStringFormatMeasurableCharacterRanges(format, 0, ranges);
    expect(Ok, stat);
    stat = GdipSetStringFormatMeasurableCharacterRanges(format, 3, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipSetStringFormatMeasurableCharacterRanges(format, 3, ranges);
    expect(Ok, stat);
    stat = GdipGetStringFormatMeasurableCharacterRangeCount(format, &count);
    expect(Ok, stat);
    if (stat == Ok) expect(3, count);

    stat= GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
