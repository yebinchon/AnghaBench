
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_config_ChainCreate () ;
 int test_config_ChainDuplicate () ;
 int test_config_StringEscape () ;
 int test_config_StringUnEscape () ;
 int test_log (char*) ;

int main( void )
{
    test_log( "Testing config chain escaping\n" );
    test_config_StringEscape();
    test_log( "Testing config chain un-escaping\n" );
    test_config_StringUnEscape();
    test_log( "Testing config_ChainCreate()\n" );
    test_config_ChainCreate();
    test_log( "Testing config_ChainDuplicate()\n" );
    test_config_ChainDuplicate();

    return 0;
}
