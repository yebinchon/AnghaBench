
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int InterlockedExchangeAdd (int*,int) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_InterlockedExchangeAdd(void)
{
    LONG dest, res;

    dest = 0;
    res = InterlockedExchangeAdd( &dest, 1 );
    ok( res == 0 && dest == 1,
        "Expected 0 and 1, got %ld and %ld", res, dest );

    dest = 1;
    res = InterlockedExchangeAdd( &dest, 2 );
    ok( res == 1 && dest == 3,
        "Expected 1 and 3, got %ld and %ld", res, dest );

    dest = 1;
    res = InterlockedExchangeAdd( &dest, -1 );
    ok( res == 1 && dest == 0,
        "Expected 1 and 0, got %ld and %ld", res, dest );
}
