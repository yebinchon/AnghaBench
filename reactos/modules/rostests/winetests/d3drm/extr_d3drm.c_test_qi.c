
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qi_test {scalar_t__ hr; scalar_t__ refcount_iid; scalar_t__ vtable_iid; int iid; } ;
typedef scalar_t__ ULONG ;
typedef size_t UINT ;
typedef scalar_t__ REFIID ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IUnknown_QueryInterface (int *,int ,void**) ;
 scalar_t__ IUnknown_Release (int *) ;
 scalar_t__ IsEqualGUID (scalar_t__,scalar_t__) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_qi(const char *test_name, IUnknown *base_iface,
                    REFIID refcount_iid, const struct qi_test *tests, UINT entry_count)
{
    ULONG refcount, expected_refcount;
    IUnknown *iface1, *iface2;
    HRESULT hr;
    UINT i, j;

    for (i = 0; i < entry_count; ++i)
    {
        hr = IUnknown_QueryInterface(base_iface, tests[i].iid, (void **)&iface1);
        ok(hr == tests[i].hr, "Got hr %#x for test \"%s\" %u.\n", hr, test_name, i);
        if (SUCCEEDED(hr))
        {
            for (j = 0; j < entry_count; ++j)
            {
                hr = IUnknown_QueryInterface(iface1, tests[j].iid, (void **)&iface2);
                ok(hr == tests[j].hr, "Got hr %#x for test \"%s\" %u, %u.\n", hr, test_name, i, j);
                if (SUCCEEDED(hr))
                {
                    expected_refcount = 0;
                    if (IsEqualGUID(refcount_iid, tests[j].refcount_iid))
                        ++expected_refcount;
                    if (IsEqualGUID(tests[i].refcount_iid, tests[j].refcount_iid))
                        ++expected_refcount;
                    refcount = IUnknown_Release(iface2);
                    ok(refcount == expected_refcount, "Got refcount %u for test \"%s\" %u, %u, expected %u.\n",
                                refcount, test_name, i, j, expected_refcount);
                    if (tests[i].vtable_iid && tests[j].vtable_iid && IsEqualGUID(tests[i].vtable_iid, tests[j].vtable_iid))
                        ok(iface1 == iface2,
                                "Expected iface1 == iface2 for test \"%s\" %u, %u. Got iface1 = %p, iface 2 = %p.\n",
                                test_name, i, j, iface1, iface2);
                    else if (tests[i].vtable_iid && tests[j].vtable_iid)
                        ok(iface1 != iface2,
                                "Expected iface1 != iface2 for test \"%s\" %u, %u. Got iface1 == iface2 == %p.\n",
                                test_name, i, j, iface1);
                }
            }

            expected_refcount = 0;
            if (IsEqualGUID(refcount_iid, tests[i].refcount_iid))
                ++expected_refcount;
            refcount = IUnknown_Release(iface1);
            ok(refcount == expected_refcount, "Got refcount %u for test \"%s\" %u, expected %u.\n",
                        refcount, test_name, i, expected_refcount);
        }
    }
}
