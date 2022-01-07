
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndTreeView; } ;
typedef TYPE_1__ browse_info ;
typedef int LPVOID ;
typedef int LPARAM ;
typedef scalar_t__ HTREEITEM ;
typedef scalar_t__ BOOL ;


 scalar_t__ BrsFolder_OnSetExpanded (TYPE_1__*,int ,scalar_t__,scalar_t__*) ;
 scalar_t__ FALSE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TVGN_CARET ;
 int TVM_SELECTITEM ;

__attribute__((used)) static BOOL BrsFolder_OnSetSelectionW(browse_info *info, LPVOID selection, BOOL is_str) {
    HTREEITEM hItem;
    BOOL bResult;

    if (!selection) return FALSE;

    bResult = BrsFolder_OnSetExpanded(info, selection, is_str, &hItem);
    if (bResult)
        SendMessageW(info->hwndTreeView, TVM_SELECTITEM, TVGN_CARET, (LPARAM)hItem );
    return bResult;
}
