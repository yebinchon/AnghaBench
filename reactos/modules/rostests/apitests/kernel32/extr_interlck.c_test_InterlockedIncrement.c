
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;


 int InterlockedIncrement (int*) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_InterlockedIncrement(void)
{
    LONG dest, res;

    dest = -2;
    res = InterlockedIncrement( &dest );
    ok( res == -1 && dest == -1,
        "Expected -1 and -1, got %ld and %ld", res, dest );

    dest = -1;
    res = InterlockedIncrement( &dest );
    ok( res == 0 && dest == 0,
        "Expected 0 and 0, got %ld and %ld", res, dest );

    dest = 0;
    res = InterlockedIncrement( &dest );
    ok( res == 1 && dest == 1,
        "Expected 1 and 1, got %ld and %ld", res, dest );
}
