
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct font_metrics {double font_size; int descent; int ascent; int line_spacing; int em_height; scalar_t__ lfHeight; int font_height; } ;
typedef scalar_t__ INT ;
typedef int GpStatus ;
typedef int GpFontFamily ;
typedef int GpFont ;


 int GdipDeleteFontFamily (int *) ;
 int GdipGetCellAscent (int *,scalar_t__,int *) ;
 int GdipGetCellDescent (int *,scalar_t__,int *) ;
 int GdipGetEmHeight (int *,scalar_t__,int *) ;
 int GdipGetFamily (int *,int **) ;
 int GdipGetFontHeight (int *,int *,int *) ;
 int GdipGetFontSize (int *,double*) ;
 int GdipGetFontStyle (int *,scalar_t__*) ;
 int GdipGetLineSpacing (int *,scalar_t__,int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void gdip_get_font_metrics(GpFont *font, struct font_metrics *fm)
{
    INT style;
    GpFontFamily *family;
    GpStatus stat;

    stat = GdipGetFontStyle(font, &style);
    expect(Ok, stat);

    stat = GdipGetFontHeight(((void*)0), ((void*)0), &fm->font_height);
    expect(InvalidParameter, stat);

    stat = GdipGetFontHeight(font, ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipGetFontHeight(font, ((void*)0), &fm->font_height);
    expect(Ok, stat);
    stat = GdipGetFontSize(font, &fm->font_size);
    expect(Ok, stat);

    fm->lfHeight = (INT)(fm->font_size * -1.0);

    stat = GdipGetFamily(font, &family);
    expect(Ok, stat);

    stat = GdipGetEmHeight(family, style, &fm->em_height);
    expect(Ok, stat);
    stat = GdipGetLineSpacing(family, style, &fm->line_spacing);
    expect(Ok, stat);
    stat = GdipGetCellAscent(family, style, &fm->ascent);
    expect(Ok, stat);
    stat = GdipGetCellDescent(family, style, &fm->descent);
    expect(Ok, stat);

    GdipDeleteFontFamily(family);
}
