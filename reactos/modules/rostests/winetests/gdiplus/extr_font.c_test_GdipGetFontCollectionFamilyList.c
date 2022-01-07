
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;
typedef int GpStatus ;
typedef int GpFontFamily ;
typedef int GpFontCollection ;


 int GdipDeleteFontFamily (int *) ;
 int GdipGetFontCollectionFamilyCount (int *,scalar_t__*) ;
 int GdipGetFontCollectionFamilyList (int *,int,int **,scalar_t__*) ;
 int GdipNewInstalledFontCollection (int **) ;
 int InvalidParameter ;
 int Ok ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GdipGetFontCollectionFamilyList(void)
{
    GpFontFamily *family, *family2;
    GpFontCollection *collection;
    INT found, count;
    GpStatus status;

    status = GdipNewInstalledFontCollection(&collection);
    ok(status == Ok, "Failed to get system collection, status %d.\n", status);

    count = 0;
    status = GdipGetFontCollectionFamilyCount(collection, &count);
    ok(status == Ok, "Failed to get family count, status %d.\n", status);
    ok(count > 0, "Unexpected empty collection.\n");

    status = GdipGetFontCollectionFamilyList(((void*)0), 0, ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);

    found = 123;
    status = GdipGetFontCollectionFamilyList(((void*)0), 0, ((void*)0), &found);
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);
    ok(found == 123, "Unexpected list count %d.\n", found);

    status = GdipGetFontCollectionFamilyList(collection, 0, ((void*)0), ((void*)0));
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);

    found = 123;
    status = GdipGetFontCollectionFamilyList(collection, 0, ((void*)0), &found);
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);
    ok(found == 123, "Unexpected list count %d.\n", found);

    found = 123;
    status = GdipGetFontCollectionFamilyList(collection, 1, ((void*)0), &found);
    ok(status == InvalidParameter, "Unexpected status %d.\n", status);
    ok(found == 123, "Unexpected list count %d.\n", found);

    family = ((void*)0);
    found = 0;
    status = GdipGetFontCollectionFamilyList(collection, 1, &family, &found);
    ok(status == Ok, "Failed to get family list, status %d.\n", status);
    ok(found == 1, "Unexpected list count %d.\n", found);
    ok(family != ((void*)0), "Expected family instance.\n");

    family = ((void*)0);
    found = 0;
    status = GdipGetFontCollectionFamilyList(collection, 1, &family2, &found);
    ok(status == Ok, "Failed to get family list, status %d.\n", status);
    ok(found == 1, "Unexpected list count %d.\n", found);
    ok(family2 != family, "Unexpected family instance.\n");

    GdipDeleteFontFamily(family);
    GdipDeleteFontFamily(family2);
}
