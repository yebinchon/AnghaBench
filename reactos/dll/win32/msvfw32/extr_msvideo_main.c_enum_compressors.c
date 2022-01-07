
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ szDescription; int fccHandler; int fccType; } ;
struct codec_info {scalar_t__ hic; TYPE_2__ icinfo; } ;
typedef int icinfo ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {int biCompression; } ;
struct TYPE_11__ {TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {TYPE_7__* lpbiIn; int fccType; } ;
typedef int LPARAM ;
typedef TYPE_2__ ICINFO ;
typedef int HWND ;
typedef scalar_t__ HIC ;
typedef int DWORD ;
typedef TYPE_3__ COMPVARS ;
typedef int BOOL ;


 int CB_ADDSTRING ;
 int CB_SETITEMDATA ;
 int ICClose (scalar_t__) ;
 scalar_t__ ICCompressQuery (scalar_t__,TYPE_7__*,int *) ;
 scalar_t__ ICERR_OK ;
 int ICGetInfo (scalar_t__,TYPE_2__*,int) ;
 scalar_t__ ICInfo (int ,scalar_t__,TYPE_2__*) ;
 int ICMODE_COMPRESS ;
 scalar_t__ ICOpen (int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 struct codec_info* heap_alloc (int) ;
 int wine_dbgstr_fcc (int ) ;

__attribute__((used)) static BOOL enum_compressors(HWND list, COMPVARS *pcv, BOOL enum_all)
{
    UINT id, total = 0;
    ICINFO icinfo;

    id = 0;

    while (ICInfo(pcv->fccType, id, &icinfo))
    {
        struct codec_info *ic;
        DWORD idx;
        HIC hic;

        id++;

        hic = ICOpen(icinfo.fccType, icinfo.fccHandler, ICMODE_COMPRESS);

        if (hic)
        {



            DWORD fccHandler = icinfo.fccHandler;

            if (!enum_all && pcv->lpbiIn)
            {
                if (ICCompressQuery(hic, pcv->lpbiIn, ((void*)0)) != ICERR_OK)
                {
                    TRACE("fccHandler %s doesn't support input DIB format %d\n",
                          wine_dbgstr_fcc(icinfo.fccHandler), pcv->lpbiIn->bmiHeader.biCompression);
                    ICClose(hic);
                    continue;
                }
            }

            ICGetInfo(hic, &icinfo, sizeof(icinfo));
            icinfo.fccHandler = fccHandler;

            idx = SendMessageW(list, CB_ADDSTRING, 0, (LPARAM)icinfo.szDescription);

            ic = heap_alloc(sizeof(*ic));
            ic->icinfo = icinfo;
            ic->hic = hic;
            SendMessageW(list, CB_SETITEMDATA, idx, (LPARAM)ic);
        }
        total++;
    }

    return total != 0;
}
