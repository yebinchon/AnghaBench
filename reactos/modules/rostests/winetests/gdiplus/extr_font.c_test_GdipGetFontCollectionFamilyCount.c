
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpFontCollection ;


 int GdipGetFontCollectionFamilyCount (int *,int*) ;
 int GdipNewInstalledFontCollection (int **) ;
 int InvalidParameter ;
 int Ok ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_GdipGetFontCollectionFamilyCount(void)
{
    GpFontCollection *collection;
    GpStatus status;
    INT count;

    status = GdipGetFontCollectionFamilyCount(((void*)0), ((void*)0));
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);

    count = 123;
    status = GdipGetFontCollectionFamilyCount(((void*)0), &count);
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);
    ok(count == 123, "Unexpected family count %d.\n", count);

    status = GdipNewInstalledFontCollection(&collection);
    ok(status == Ok, "Failed to get system collection, status %d.\n", status);

    status = GdipGetFontCollectionFamilyCount(collection, ((void*)0));
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);
}
