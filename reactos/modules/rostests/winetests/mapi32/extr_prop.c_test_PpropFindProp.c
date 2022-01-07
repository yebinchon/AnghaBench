
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {void* ulPropTag; } ;
typedef TYPE_1__ SPropValue ;


 size_t ARRAY_SIZE (void**) ;
 void* PROP_TAG (int ,unsigned int) ;
 int PT_I2 ;
 int PT_UNSPECIFIED ;
 int ok (int,char*,...) ;
 TYPE_1__* pPpropFindProp (TYPE_1__*,unsigned int,void*) ;
 void** ptTypes ;
 int win_skip (char*) ;

__attribute__((used)) static void test_PpropFindProp(void)
{
    SPropValue pvProp, *pRet;
    ULONG i;

    if (!pPpropFindProp)
    {
        win_skip("PpropFindProp is not available\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(ptTypes); i++)
    {
        pvProp.ulPropTag = ptTypes[i];

        pRet = pPpropFindProp(&pvProp, 1u, ptTypes[i]);
        ok(pRet == &pvProp,
           "PpropFindProp[%d]: Didn't find existing property\n",
           ptTypes[i]);

        pRet = pPpropFindProp(&pvProp, 1u, i ? ptTypes[i-1] : ptTypes[i+1]);
        ok(pRet == ((void*)0), "PpropFindProp[%d]: Found nonexistent property\n",
           ptTypes[i]);
    }

    pvProp.ulPropTag = PROP_TAG(PT_I2, 1u);
    pRet = pPpropFindProp(&pvProp, 1u, PROP_TAG(PT_UNSPECIFIED, 0u));
    ok(pRet == ((void*)0), "PpropFindProp[UNSPECIFIED]: Matched on different id\n");
    pRet = pPpropFindProp(&pvProp, 1u, PROP_TAG(PT_UNSPECIFIED, 1u));
    ok(pRet == &pvProp, "PpropFindProp[UNSPECIFIED]: Didn't match id\n");
}
