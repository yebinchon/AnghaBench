
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int stub_msg ;
typedef int buf ;
struct TYPE_6__ {int CorrDespIncrement; } ;
typedef TYPE_1__ MIDL_STUB_MESSAGE ;
typedef TYPE_1__ BYTE ;


 int NdrCorrelationInitialize (TYPE_1__*,TYPE_1__*,int,int ) ;
 scalar_t__ broken (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_NdrCorrelationInitialize(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    BYTE buf[256];

    memset( &stub_msg, 0, sizeof(stub_msg) );
    memset( buf, 0, sizeof(buf) );

    NdrCorrelationInitialize( &stub_msg, buf, sizeof(buf), 0 );
    ok( stub_msg.CorrDespIncrement == 2 ||
        broken(stub_msg.CorrDespIncrement == 0),
        "got %d\n", stub_msg.CorrDespIncrement );

    memset( &stub_msg, 0, sizeof(stub_msg) );
    memset( buf, 0, sizeof(buf) );

    stub_msg.CorrDespIncrement = 1;
    NdrCorrelationInitialize( &stub_msg, buf, sizeof(buf), 0 );
    ok( stub_msg.CorrDespIncrement == 1, "got %d\n", stub_msg.CorrDespIncrement );
}
