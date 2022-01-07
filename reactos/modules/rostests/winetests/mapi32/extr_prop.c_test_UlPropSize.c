
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int pv ;
typedef char WCHAR ;
typedef int USHORT ;
typedef scalar_t__ ULONG ;
struct TYPE_34__ {scalar_t__ cValues; } ;
struct TYPE_33__ {scalar_t__ cValues; } ;
struct TYPE_32__ {scalar_t__ cValues; } ;
struct TYPE_31__ {scalar_t__ cValues; } ;
struct TYPE_30__ {scalar_t__ cValues; } ;
struct TYPE_29__ {scalar_t__ cValues; } ;
struct TYPE_28__ {scalar_t__ cValues; } ;
struct TYPE_27__ {scalar_t__ cValues; } ;
struct TYPE_26__ {scalar_t__ cValues; } ;
struct TYPE_25__ {int cb; } ;
struct TYPE_22__ {int cValues; TYPE_16__* lpbin; } ;
struct TYPE_21__ {int cValues; char** lppszW; } ;
struct TYPE_20__ {int cValues; char** lppszA; } ;
struct TYPE_19__ {scalar_t__ cb; } ;
struct TYPE_23__ {char* lpszA; char* lpszW; TYPE_13__ MVbin; TYPE_12__ MVszW; TYPE_11__ MVszA; TYPE_10__ bin; TYPE_9__ MVguid; TYPE_8__ MVli; TYPE_7__ MVft; TYPE_6__ MVat; TYPE_5__ MVcur; TYPE_4__ MVdbl; TYPE_3__ MVflt; TYPE_2__ MVl; TYPE_1__ MVi; } ;
struct TYPE_24__ {TYPE_14__ Value; scalar_t__ ulPropTag; } ;
typedef TYPE_15__ SPropValue ;
typedef int SCODE ;
typedef TYPE_16__ SBinary ;
typedef char* LPWSTR ;
typedef char* LPSTR ;
typedef int LONG64 ;
typedef int LONG ;
typedef int GUID ;
typedef int FILETIME ;
typedef int CY ;


 scalar_t__ PROP_ID_INVALID ;
 int PROP_TYPE (scalar_t__) ;
 int memset (TYPE_15__*,int ,int) ;
 int ok (int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ pUlPropSize (TYPE_15__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UlPropSize(void)
{
    static char szHiA[] = "Hi!";
    static WCHAR szHiW[] = { 'H', 'i', '!', '\0' };
    LPSTR buffa[2];
    LPWSTR buffw[2];
    SBinary buffbin[2];
    ULONG pt, exp, res;

    if (!pUlPropSize)
    {
        win_skip("UlPropSize is not available\n");
        return;
    }

    for (pt = 0; pt < PROP_ID_INVALID; pt++)
    {
        SPropValue pv;

        memset(&pv, 0 ,sizeof(pv));
        pv.ulPropTag = pt;

        exp = 1u;

        switch (PROP_TYPE(pt))
        {
        case 140: pv.Value.MVi.cValues = exp = 2;
        case 148: exp *= sizeof(USHORT); break;
        case 139: pv.Value.MVl.cValues = exp = 2;
        case 147: exp *= sizeof(LONG); break;
        case 137: pv.Value.MVflt.cValues = exp = 2;
        case 132: exp *= sizeof(float); break;
        case 141: pv.Value.MVdbl.cValues = exp = 2;
        case 131: exp *= sizeof(double); break;
        case 142: pv.Value.MVcur.cValues = exp = 2;
        case 150: exp *= sizeof(CY); break;
        case 145: pv.Value.MVat.cValues = exp = 2;
        case 154: exp *= sizeof(double); break;
        case 135: pv.Value.MVft.cValues = exp = 2;
        case 129: exp *= sizeof(FILETIME); break;
        case 149: exp = sizeof(SCODE); break;
        case 152: exp = sizeof(USHORT); break;
        case 133: exp = 0; break;
        case 138: pv.Value.MVli.cValues = exp = 2;
        case 146: exp *= sizeof(LONG64); break;







        case 151: exp *= sizeof(GUID); break;
        case 130:
            pv.Value.lpszA = szHiA;
            exp = 4;
            break;
        case 128:
            pv.Value.lpszW = szHiW;
            exp = 4 * sizeof(WCHAR);
            break;
        case 153:
            pv.Value.bin.cb = exp = 19;
            break;
        case 136:
            pv.Value.MVszA.cValues = 2;
            pv.Value.MVszA.lppszA = buffa;
            buffa[0] = szHiA;
            buffa[1] = szHiA;
            exp = 8;
            break;
        case 134:
            pv.Value.MVszW.cValues = 2;
            pv.Value.MVszW.lppszW = buffw;
            buffw[0] = szHiW;
            buffw[1] = szHiW;
            exp = 8 * sizeof(WCHAR);
            break;
        case 144:
            pv.Value.MVbin.cValues = 2;
            pv.Value.MVbin.lpbin = buffbin;
            buffbin[0].cb = 19;
            buffbin[1].cb = 1;
            exp = 20;
            break;
        default:
            exp = 0;
        }

        res = pUlPropSize(&pv);
        ok(res == exp,
           "pt= %d: Expected %d, got %d\n", pt, exp, res);
    }
}
