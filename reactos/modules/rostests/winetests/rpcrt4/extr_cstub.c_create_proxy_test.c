
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int ref; int IUnknown_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int IRpcProxyBuffer ;
typedef int IPSFactoryBuffer ;
typedef int HRESULT ;


 int IPSFactoryBuffer_CreateProxy (int *,int *,int ,int **,void**) ;
 int IRpcProxyBuffer_Release (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 TYPE_1__ dummy_unknown ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void create_proxy_test( IPSFactoryBuffer *ppsf, REFIID iid, const void *expected_vtbl )
{
    IRpcProxyBuffer *proxy = ((void*)0);
    IUnknown *iface = ((void*)0);
    HRESULT r;
    ULONG count;

    r = IPSFactoryBuffer_CreateProxy(ppsf, ((void*)0), iid, &proxy, (void **)&iface);
    ok( r == S_OK, "IPSFactoryBuffer_CreateProxy failed %x\n", r );
    ok( *(void **)iface == expected_vtbl, "wrong iface pointer %p/%p\n", *(void **)iface, expected_vtbl );
    count = IUnknown_Release( iface );
    ok( count == 1, "wrong refcount %u\n", count );
    count = IRpcProxyBuffer_Release( proxy );
    ok( count == 0, "wrong refcount %u\n", count );

    dummy_unknown.ref = 4;
    r = IPSFactoryBuffer_CreateProxy(ppsf, &dummy_unknown.IUnknown_iface, iid, &proxy,
            (void **)&iface);
    ok( r == S_OK, "IPSFactoryBuffer_CreateProxy failed %x\n", r );
    ok( dummy_unknown.ref == 5, "wrong refcount %u\n", dummy_unknown.ref );
    ok( *(void **)iface == expected_vtbl, "wrong iface pointer %p/%p\n", *(void **)iface, expected_vtbl );
    count = IUnknown_Release( iface );
    ok( count == 4, "wrong refcount %u\n", count );
    ok( dummy_unknown.ref == 4, "wrong refcount %u\n", dummy_unknown.ref );
    count = IRpcProxyBuffer_Release( proxy );
    ok( count == 0, "wrong refcount %u\n", count );
    ok( dummy_unknown.ref == 4, "wrong refcount %u\n", dummy_unknown.ref );
}
