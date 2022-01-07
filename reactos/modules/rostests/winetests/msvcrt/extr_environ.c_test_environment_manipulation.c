
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _putenv (char*) ;
 char* a_very_long_env_string ;
 int * getenv (char*) ;
 int ok (int,char*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void test_environment_manipulation(void)
{
    ok( _putenv("cat=") == 0, "_putenv failed on deletion of nonexistent environment variable\n" );
    ok( _putenv("cat=dog") == 0, "failed setting cat=dog\n" );
    ok( strcmp(getenv("cat"), "dog") == 0, "getenv did not return 'dog'\n" );
    ok( _putenv("cat=") == 0, "failed deleting cat\n" );

    ok( _putenv("=") == -1, "should not accept '=' as input\n" );
    ok( _putenv("=dog") == -1, "should not accept '=dog' as input\n" );
    ok( _putenv(a_very_long_env_string) == 0, "_putenv failed for long environment string\n");

    ok( getenv("nonexistent") == ((void*)0), "getenv should fail with nonexistent var name\n" );
}
