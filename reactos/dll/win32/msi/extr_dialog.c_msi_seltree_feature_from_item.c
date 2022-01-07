
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; scalar_t__ lParam; int hItem; } ;
typedef TYPE_1__ TVITEMW ;
typedef int MSIFEATURE ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HTREEITEM ;


 int SendMessageW (int ,int ,int ,int ) ;
 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 int TVM_GETITEMW ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static MSIFEATURE *msi_seltree_feature_from_item( HWND hwnd, HTREEITEM hItem )
{
    TVITEMW tvi;


    memset( &tvi, 0, sizeof tvi );
    tvi.hItem = hItem;
    tvi.mask = TVIF_PARAM | TVIF_HANDLE;
    SendMessageW( hwnd, TVM_GETITEMW, 0, (LPARAM)&tvi );
    return (MSIFEATURE *)tvi.lParam;
}
