
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int * pAlloc (int) ;
 int pFree (int *) ;
 int pGetSize (int *) ;
 int * pReAlloc (int *,int) ;

__attribute__((used)) static void test_Alloc(void)
{
    PCHAR p;
    BOOL res;
    DWORD size, min;


    p = pAlloc(0);
    ok(p != ((void*)0), "Expected non-NULL ptr\n");


    min = pGetSize(p);


    res = pFree(p);
    ok(res == TRUE, "Expected TRUE, got %d\n", res);


    p = pAlloc(1);
    ok(p != ((void*)0), "Expected non-NULL ptr\n");


    size = pGetSize(p);
    ok(size == 1 ||
       broken(size == min),
       "Expected 1, got %d\n", size);


    p = pReAlloc(p, 2);
    ok(p != ((void*)0), "Expected non-NULL ptr\n");


    size = pGetSize(p);
    ok(size == 2 ||
       broken(size == min),
       "Expected 2, got %d\n", size);


    res = pFree(p);
    ok(res == TRUE, "Expected TRUE, got %d\n", res);


    res = pFree(((void*)0));
    ok(res == TRUE ||
       broken(res == FALSE),
       "Expected TRUE, got %d\n", res);


    p = pReAlloc(((void*)0), 2);
    ok(p != ((void*)0), "Expected non-NULL ptr\n");

    res = pFree(p);
    ok(res == TRUE, "Expected TRUE, got %d\n", res);
}
