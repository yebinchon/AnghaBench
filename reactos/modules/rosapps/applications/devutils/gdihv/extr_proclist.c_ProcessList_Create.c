
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int mask; char* pszText; int cx; int fmt; } ;
typedef TYPE_1__ LVCOLUMN ;
typedef int HWND ;


 int LVCFMT_LEFT ;
 int LVCF_FMT ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int ListView_InsertColumn (int ,int,TYPE_1__*) ;
 int ProcessList_Update (int ) ;

VOID
ProcessList_Create(HWND hListCtrl)
{
 LVCOLUMN column;

 column.mask = LVCF_TEXT|LVCF_FMT|LVCF_WIDTH;
 column.fmt = LVCFMT_LEFT;

 column.pszText = L"Process";
 column.cx = 90;
 (void)ListView_InsertColumn(hListCtrl, 0, &column);

 column.pszText = L"ProcessID";
 column.cx = 90;
 (void)ListView_InsertColumn(hListCtrl, 1, &column);
 ProcessList_Update(hListCtrl);
}
