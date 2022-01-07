
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_quirks_mode ;
 int check_strict_mode ;
 int run_domtest (char*,int ) ;
 int test_quirks_mode_offsetHeight ;

__attribute__((used)) static void test_quirks_mode(void)
{
    run_domtest("<html></html>", check_quirks_mode);
    run_domtest("<!DOCTYPE html>\n<html></html>", check_strict_mode);
    run_domtest("<!-- comment --><!DOCTYPE html>\n<html></html>", check_quirks_mode);
    run_domtest("<html><body></body></html>", test_quirks_mode_offsetHeight);
}
