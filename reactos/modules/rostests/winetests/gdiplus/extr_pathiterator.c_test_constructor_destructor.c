
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPathIterator ;
typedef int GpPath ;


 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;

    GdipCreatePath(FillModeAlternate, &path);
    GdipAddPathRectangle(path, 5.0, 5.0, 100.0, 50.0);


    stat = GdipCreatePathIter(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    iter = ((void*)0);
    stat = GdipCreatePathIter(&iter, ((void*)0));
    expect(Ok, stat);
    ok(iter != ((void*)0), "Expected iterator to be created\n");
    GdipDeletePathIter(iter);
    stat = GdipCreatePathIter(((void*)0), path);
    expect(InvalidParameter, stat);
    stat = GdipDeletePathIter(((void*)0));
    expect(InvalidParameter, stat);


    stat = GdipCreatePathIter(&iter, path);
    expect(Ok, stat);

    GdipDeletePathIter(iter);
    GdipDeletePath(path);
}
