
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;


 int FillModeAlternate ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpStatus status;
    GpPath* path = ((void*)0);

    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);
    ok(path != ((void*)0), "Expected path to be initialized\n");

    status = GdipDeletePath(((void*)0));
    expect(InvalidParameter, status);

    status = GdipDeletePath(path);
    expect(Ok, status);
}
