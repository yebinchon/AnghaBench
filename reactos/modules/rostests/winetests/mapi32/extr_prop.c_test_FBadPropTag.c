
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int MV_FLAG ;
 int PROP_ID_INVALID ;
 int PROP_TYPE_MASK ;
 scalar_t__ TRUE ;
 int ok (int,char*,int,...) ;
 int pFBadPropTag (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_FBadPropTag(void)
{
    ULONG pt, res;

    if (!pFBadPropTag)
    {
        win_skip("FBadPropTag is not available\n");
        return;
    }

    for (pt = 0; pt < PROP_ID_INVALID; pt++)
    {
        BOOL bBad = TRUE;

        switch (pt & (~MV_FLAG & PROP_TYPE_MASK))
        {
        case 128:
        case 135: case 138: case 137: case 133:
        case 132: case 140: case 144:
        case 139: case 142: case 134:
        case 136: case 131: case 129:
        case 130: case 141: case 143:
            bBad = FALSE;
        }

        res = pFBadPropTag(pt);
        if (bBad)
            ok(res != 0, "pt= %d: Expected non-zero, got 0\n", pt);
        else
            ok(res == 0,
               "pt= %d: Expected zero, got %d\n", pt, res);
    }
}
