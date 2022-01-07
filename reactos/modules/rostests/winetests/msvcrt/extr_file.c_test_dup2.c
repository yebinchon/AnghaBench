
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dup2 (int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_dup2(void)
{
    ok(-1 == _dup2(0, -1), "expected _dup2 to fail when second arg is negative\n" );
}
