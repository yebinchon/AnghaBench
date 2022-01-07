
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPVOID ;


 int * CryptMemAlloc (int ) ;
 int CryptMemFree (int *) ;
 int * CryptMemRealloc (int *,int) ;
 int GetLastError () ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_cryptAllocate(void)
{
    LPVOID buf;

    buf = CryptMemAlloc(0);
    ok(buf != ((void*)0), "CryptMemAlloc failed: %08x\n", GetLastError());
    CryptMemFree(buf);

    buf = CryptMemAlloc(0);
    buf = CryptMemRealloc(buf, 1);
    ok(buf != ((void*)0), "CryptMemRealloc failed: %08x\n", GetLastError());
    CryptMemFree(buf);
}
