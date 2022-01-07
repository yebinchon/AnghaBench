
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef int INT ;
typedef int GpStringFormat ;
typedef int GpStatus ;


 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetStringFormatTabStopCount (int *,int*) ;
 int GdipGetStringFormatTabStops (int *,int,double*,double*) ;
 int GdipSetStringFormatTabStops (int *,double,int,int *) ;
 int InvalidParameter ;
 int LANG_NEUTRAL ;
 int NotImplemented ;
 int Ok ;
 int expect (int,int) ;
 int expectf (double,double) ;
 int * tabstops ;

__attribute__((used)) static void test_tabstops(void)
{
    GpStringFormat *format;
    GpStatus stat;
    INT count;
    REAL tabs[3];
    REAL firsttab;

    stat = GdipCreateStringFormat(0, LANG_NEUTRAL, &format);
    expect(Ok, stat);


    stat = GdipGetStringFormatTabStopCount(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStopCount(((void*)0), &count);
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStopCount(format, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipSetStringFormatTabStops(((void*)0), 0.0, 0, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipSetStringFormatTabStops(format, 0.0, 0, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipSetStringFormatTabStops(((void*)0), 0.0, 0, tabstops);
    expect(InvalidParameter, stat);

    stat = GdipGetStringFormatTabStops(((void*)0), 0, ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStops(format, 0, ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStops(((void*)0), 0, &firsttab, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStops(((void*)0), 0, ((void*)0), tabs);
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStops(format, 0, &firsttab, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetStringFormatTabStops(format, 0, ((void*)0), tabs);
    expect(InvalidParameter, stat);


    stat = GdipGetStringFormatTabStopCount(format, &count);
    expect(Ok, stat);
    expect(0, count);

    stat = GdipSetStringFormatTabStops(format, 0.0, -1, tabstops);
    expect(Ok, stat);
    count = -1;
    stat = GdipGetStringFormatTabStopCount(format, &count);
    expect(Ok, stat);
    expect(0, count);

    stat = GdipSetStringFormatTabStops(format, -10.0, 0, tabstops);
    expect(Ok, stat);
    stat = GdipSetStringFormatTabStops(format, -10.0, 1, tabstops);
    expect(NotImplemented, stat);

    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = GdipGetStringFormatTabStops(format, 0, &firsttab, tabs);
    expect(Ok, stat);
    expectf(-1.0, tabs[0]);
    expectf(-1.0, tabs[1]);
    expectf(-1.0, tabs[2]);
    expectf(0.0, firsttab);

    stat = GdipSetStringFormatTabStops(format, +0.0, 3, tabstops);
    expect(Ok, stat);
    count = 0;
    stat = GdipGetStringFormatTabStopCount(format, &count);
    expect(Ok, stat);
    expect(3, count);

    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = GdipGetStringFormatTabStops(format, 3, &firsttab, tabs);
    expect(Ok, stat);
    expectf(0.0, tabs[0]);
    expectf(10.0, tabs[1]);
    expectf(2.0, tabs[2]);
    expectf(0.0, firsttab);

    stat = GdipSetStringFormatTabStops(format, 10.0, 3, tabstops);
    expect(Ok, stat);
    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = GdipGetStringFormatTabStops(format, 0, &firsttab, tabs);
    expect(Ok, stat);
    expectf(-1.0, tabs[0]);
    expectf(-1.0, tabs[1]);
    expectf(-1.0, tabs[2]);
    expectf(10.0, firsttab);


    stat = GdipSetStringFormatTabStops(format, 0.0, 0, tabstops);
    expect(Ok, stat);
    count = 0;
    stat = GdipGetStringFormatTabStopCount(format, &count);
    expect(Ok, stat);
    expect(3, count);

    stat = GdipDeleteStringFormat(format);
    expect(Ok, stat);
}
