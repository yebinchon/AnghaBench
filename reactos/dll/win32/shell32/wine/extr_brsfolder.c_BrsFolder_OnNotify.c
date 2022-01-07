
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int browse_info ;
typedef int UINT ;
struct TYPE_6__ {int code; scalar_t__ idFrom; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ NMTREEVIEWW ;
typedef int LRESULT ;
typedef int LPNMTVDISPINFOW ;
typedef scalar_t__ LPNMHDR ;


 int BrsFolder_Treeview_Changed (int *,TYPE_2__*) ;
 int BrsFolder_Treeview_Delete (int *,TYPE_2__*) ;
 int BrsFolder_Treeview_Expand (int *,TYPE_2__*) ;
 int BrsFolder_Treeview_Rename (int *,int ) ;
 scalar_t__ IDC_BROWSE_FOR_FOLDER_TREEVIEW ;
 int TRACE (char*,int *,int ,scalar_t__,int) ;
 int WARN (char*,int) ;

__attribute__((used)) static LRESULT BrsFolder_OnNotify( browse_info *info, UINT CtlID, LPNMHDR lpnmh )
{
    NMTREEVIEWW *pnmtv = (NMTREEVIEWW *)lpnmh;

    TRACE("%p %x %p msg=%x\n", info, CtlID, lpnmh, pnmtv->hdr.code);

    if (pnmtv->hdr.idFrom != IDC_BROWSE_FOR_FOLDER_TREEVIEW)
        return 0;

    switch (pnmtv->hdr.code)
    {
    case 135:
    case 134:
        return BrsFolder_Treeview_Delete( info, pnmtv );

    case 131:
    case 130:
        return BrsFolder_Treeview_Expand( info, pnmtv );

    case 129:
    case 128:
        return BrsFolder_Treeview_Changed( info, pnmtv );

    case 133:
    case 132:
        return BrsFolder_Treeview_Rename( info, (LPNMTVDISPINFOW)pnmtv );

    default:
        WARN("unhandled (%d)\n", pnmtv->hdr.code);
        break;
    }

    return 0;
}
