
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetFocus (int ) ;
 int hEdit ;
 int killfocus_count ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_killfocus(void)
{


    SetFocus(hEdit);
    killfocus_count = 0;
    SetFocus(0);
    ok(killfocus_count == 1, "Expected one EN_KILLFOCUS message, got: %d\n", killfocus_count);
}
