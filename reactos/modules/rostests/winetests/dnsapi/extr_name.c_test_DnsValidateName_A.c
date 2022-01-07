
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; scalar_t__ status_broken; int * name; int format; } ;
typedef scalar_t__ DNS_STATUS ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int DnsNameDomain ;
 scalar_t__ DnsValidateName_A (int *,int ) ;
 scalar_t__ ERROR_INVALID_NAME ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 TYPE_1__* test_data ;

__attribute__((used)) static void test_DnsValidateName_A( void )
{
    unsigned int i;
    DNS_STATUS status;

    status = DnsValidateName_A( ((void*)0), DnsNameDomain );
    ok( status == ERROR_INVALID_NAME, "succeeded unexpectedly\n" );

    for (i = 0; i < ARRAY_SIZE(test_data); i++)
    {
        status = DnsValidateName_A( test_data[i].name, test_data[i].format );
        ok( status == test_data[i].status || broken(status == test_data[i].status_broken),
            "%d: \'%s\': got %d, expected %d\n", i, test_data[i].name, status, test_data[i].status );
    }
}
