#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_2__ {int ref; int /*<<< orphan*/  IUnknown_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IRpcProxyBuffer ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 TYPE_1__ dummy_unknown ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC4( IPSFactoryBuffer *ppsf, REFIID iid, const void *expected_vtbl )
{
    IRpcProxyBuffer *proxy = NULL;
    IUnknown *iface = NULL;
    HRESULT r;
    ULONG count;

    r = FUNC0(ppsf, NULL, iid, &proxy, (void **)&iface);
    FUNC3( r == S_OK, "IPSFactoryBuffer_CreateProxy failed %x\n", r );
    FUNC3( *(void **)iface == expected_vtbl, "wrong iface pointer %p/%p\n", *(void **)iface, expected_vtbl );
    count = FUNC2( iface );
    FUNC3( count == 1, "wrong refcount %u\n", count );
    count = FUNC1( proxy );
    FUNC3( count == 0, "wrong refcount %u\n", count );

    dummy_unknown.ref = 4;
    r = FUNC0(ppsf, &dummy_unknown.IUnknown_iface, iid, &proxy,
            (void **)&iface);
    FUNC3( r == S_OK, "IPSFactoryBuffer_CreateProxy failed %x\n", r );
    FUNC3( dummy_unknown.ref == 5, "wrong refcount %u\n", dummy_unknown.ref );
    FUNC3( *(void **)iface == expected_vtbl, "wrong iface pointer %p/%p\n", *(void **)iface, expected_vtbl );
    count = FUNC2( iface );
    FUNC3( count == 4, "wrong refcount %u\n", count );
    FUNC3( dummy_unknown.ref == 4, "wrong refcount %u\n", dummy_unknown.ref );
    count = FUNC1( proxy );
    FUNC3( count == 0, "wrong refcount %u\n", count );
    FUNC3( dummy_unknown.ref == 4, "wrong refcount %u\n", dummy_unknown.ref );
}