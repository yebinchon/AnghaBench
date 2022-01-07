
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int cValues; scalar_t__* aulPropTag; } ;
typedef TYPE_1__ SPropTagArray ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ MV_FLAG ;
 scalar_t__ PROP_ID_INVALID ;
 scalar_t__ PROP_TYPE_MASK ;





 scalar_t__ PT_ERROR ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ pFBadColumnSet (TYPE_1__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FBadColumnSet(void)
{
    SPropTagArray pta;
    ULONG pt, res;

    if (!pFBadColumnSet)
    {
        win_skip("FBadColumnSet is not available\n");
        return;
    }

    res = pFBadColumnSet(((void*)0));
    ok(res != 0, "(null): Expected non-zero, got 0\n");

    pta.cValues = 1;

    for (pt = 0; pt < PROP_ID_INVALID; pt++)
    {
        BOOL bBad = TRUE;

        pta.aulPropTag[0] = pt;

        switch (pt & (~MV_FLAG & PROP_TYPE_MASK))
        {
        case 128:
        case 135:
        case 138:
        case 137:
        case 133:
        case 132:
        case 139:
        case 143:
        case 141:
        case 134:
        case 136:
        case 131:
        case 129:
        case 130:
        case 140:
        case 142:
            bBad = FALSE;
        }
        if (pt == (MV_FLAG|PT_ERROR))
            bBad = FALSE;

        res = pFBadColumnSet(&pta);
        if (bBad)
            ok(res != 0, "pt= %d: Expected non-zero, got 0\n", pt);
        else
            ok(res == 0,
               "pt= %d: Expected zero, got %d\n", pt, res);
    }
}
