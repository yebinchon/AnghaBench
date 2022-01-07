
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int Vtbl; } ;
struct TYPE_7__ {int Vtbl; } ;
struct TYPE_6__ {int Vtbl; } ;
struct TYPE_5__ {int Vtbl; } ;
typedef int IPSFactoryBuffer ;


 int IID_if1 ;
 int IID_if2 ;
 int IID_if3 ;
 int IID_if4 ;
 int create_proxy_test (int *,int *,int ) ;
 TYPE_4__ if1_proxy_vtbl ;
 TYPE_3__ if2_proxy_vtbl ;
 TYPE_2__ if3_proxy_vtbl ;
 TYPE_1__ if4_proxy_vtbl ;

__attribute__((used)) static void test_CreateProxy( IPSFactoryBuffer *ppsf )
{
    create_proxy_test( ppsf, &IID_if1, if1_proxy_vtbl.Vtbl );
    create_proxy_test( ppsf, &IID_if2, if2_proxy_vtbl.Vtbl );
    create_proxy_test( ppsf, &IID_if3, if3_proxy_vtbl.Vtbl );
    create_proxy_test( ppsf, &IID_if4, if4_proxy_vtbl.Vtbl );
}
