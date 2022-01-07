
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpFontCollection ;


 int GdipNewInstalledFontCollection (int **) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_installedfonts (void)
{
    GpStatus stat;
    GpFontCollection* collection=((void*)0);

    stat = GdipNewInstalledFontCollection(((void*)0));
    expect (InvalidParameter, stat);

    stat = GdipNewInstalledFontCollection(&collection);
    expect (Ok, stat);
    ok (collection != ((void*)0), "got NULL font collection\n");
}
