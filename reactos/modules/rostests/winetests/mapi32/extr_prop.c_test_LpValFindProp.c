
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {int ulPropTag; } ;
typedef TYPE_1__ SPropValue ;


 size_t ARRAY_SIZE (int *) ;
 int PROP_TAG (int ,unsigned int) ;
 int PT_NULL ;
 int ok (int,char*,int ) ;
 TYPE_1__* pLpValFindProp (int ,unsigned int,TYPE_1__*) ;
 int * ptTypes ;
 int win_skip (char*) ;

__attribute__((used)) static void test_LpValFindProp(void)
{
    SPropValue pvProp, *pRet;
    ULONG i;

    if (!pLpValFindProp)
    {
        win_skip("LpValFindProp is not available\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(ptTypes); i++)
    {
        pvProp.ulPropTag = PROP_TAG(ptTypes[i], 1u);

        pRet = pLpValFindProp(PROP_TAG(ptTypes[i], 1u), 1u, &pvProp);
        ok(pRet == &pvProp,
           "LpValFindProp[%d]: Didn't find existing property id/type\n",
           ptTypes[i]);

        pRet = pLpValFindProp(PROP_TAG(ptTypes[i], 0u), 1u, &pvProp);
        ok(pRet == ((void*)0), "LpValFindProp[%d]: Found nonexistent property id\n",
           ptTypes[i]);

        pRet = pLpValFindProp(PROP_TAG(PT_NULL, 0u), 1u, &pvProp);
        ok(pRet == ((void*)0), "LpValFindProp[%d]: Found nonexistent property id/type\n",
           ptTypes[i]);

        pRet = pLpValFindProp(PROP_TAG(PT_NULL, 1u), 1u, &pvProp);
        ok(pRet == &pvProp,
           "LpValFindProp[%d]: Didn't find existing property id\n",
           ptTypes[i]);
    }
}
