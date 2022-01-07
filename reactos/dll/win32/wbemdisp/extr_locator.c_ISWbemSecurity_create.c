
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct security {int refs; TYPE_1__ ISWbemSecurity_iface; int authlevel; int implevel; } ;
typedef TYPE_1__ ISWbemSecurity ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,...) ;
 struct security* heap_alloc (int) ;
 int security_vtbl ;
 int wbemAuthenticationLevelPktPrivacy ;
 int wbemImpersonationLevelImpersonate ;

__attribute__((used)) static HRESULT ISWbemSecurity_create( ISWbemSecurity **obj )
{
    struct security *security;

    TRACE( "%p\n", obj );

    if (!(security = heap_alloc( sizeof(*security) ))) return E_OUTOFMEMORY;
    security->ISWbemSecurity_iface.lpVtbl = &security_vtbl;
    security->refs = 1;
    security->implevel = wbemImpersonationLevelImpersonate;
    security->authlevel = wbemAuthenticationLevelPktPrivacy;

    *obj = &security->ISWbemSecurity_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
