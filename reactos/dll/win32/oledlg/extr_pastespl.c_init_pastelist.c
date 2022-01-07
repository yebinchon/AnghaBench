
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cfFormat; } ;
struct TYPE_11__ {size_t dwScratchSpace; TYPE_1__ fmtetc; } ;
struct TYPE_10__ {scalar_t__ cfFormat; } ;
struct TYPE_9__ {size_t cPasteEntries; TYPE_5__* arrPasteEntries; int lpSrcDataObj; } ;
typedef TYPE_2__ OLEUIPASTESPECIALW ;
typedef int IEnumFORMATETC ;
typedef int HWND ;
typedef int HRESULT ;
typedef TYPE_3__ FORMATETC ;
typedef size_t DWORD ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int DATADIR_GET ;
 int EnableWindow (int ,int) ;
 scalar_t__ FAILED (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_PS_PASTE ;
 int IDC_PS_PASTELIST ;
 int IDataObject_EnumFormatEtc (int ,int ,int **) ;
 int IEnumFORMATETC_Next (int *,int ,TYPE_3__*,size_t*) ;
 int IEnumFORMATETC_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,scalar_t__,...) ;
 int WARN (char*) ;
 int add_entry_to_lb (int ,int ,TYPE_5__*) ;

__attribute__((used)) static DWORD init_pastelist(HWND hdlg, OLEUIPASTESPECIALW *ps)
{
    IEnumFORMATETC *penum;
    HRESULT hr;
    FORMATETC fmts[20];
    DWORD fetched, items_added = 0;

    hr = IDataObject_EnumFormatEtc(ps->lpSrcDataObj, DATADIR_GET, &penum);
    if(FAILED(hr))
    {
        WARN("Unable to create IEnumFORMATETC\n");
        return 0;
    }


    hr = IEnumFORMATETC_Next(penum, ARRAY_SIZE(fmts), fmts, &fetched);
    TRACE("got %d formats hr %08x\n", fetched, hr);

    if(SUCCEEDED(hr))
    {
        DWORD src_fmt, req_fmt;
        for(req_fmt = 0; req_fmt < ps->cPasteEntries; req_fmt++)
        {

            ps->arrPasteEntries[req_fmt].dwScratchSpace = req_fmt;
            TRACE("req_fmt %x\n", ps->arrPasteEntries[req_fmt].fmtetc.cfFormat);
            for(src_fmt = 0; src_fmt < fetched; src_fmt++)
            {
                TRACE("\tenum'ed fmt %x\n", fmts[src_fmt].cfFormat);
                if(ps->arrPasteEntries[req_fmt].fmtetc.cfFormat == fmts[src_fmt].cfFormat)
                {
                    add_entry_to_lb(hdlg, IDC_PS_PASTELIST, ps->arrPasteEntries + req_fmt);
                    items_added++;
                    break;
                }
            }
        }
    }

    IEnumFORMATETC_Release(penum);
    EnableWindow(GetDlgItem(hdlg, IDC_PS_PASTE), items_added != 0);
    return items_added;
}
