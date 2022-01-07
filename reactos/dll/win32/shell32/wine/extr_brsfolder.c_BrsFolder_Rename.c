
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndTreeView; } ;
typedef TYPE_1__ browse_info ;
typedef int LPARAM ;
typedef scalar_t__ HTREEITEM ;
typedef int HRESULT ;


 int S_OK ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TVGN_CARET ;
 int TVM_EDITLABELW ;
 int TVM_SELECTITEM ;

__attribute__((used)) static HRESULT BrsFolder_Rename(browse_info *info, HTREEITEM rename)
{
    SendMessageW(info->hwndTreeView, TVM_SELECTITEM, TVGN_CARET, (LPARAM)rename);
    SendMessageW(info->hwndTreeView, TVM_EDITLABELW, 0, (LPARAM)rename);
    return S_OK;
}
