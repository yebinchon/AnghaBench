
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int mask; char* pszText; int cx; int fmt; } ;
typedef TYPE_1__ LVCOLUMN ;
typedef int HWND ;


 int HandleList_Update (int ,int ) ;
 int LVCFMT_LEFT ;
 int LVCF_FMT ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int ListView_InsertColumn (int ,int,TYPE_1__*) ;

VOID
HandleList_Create(HWND hListCtrl)
{
 LVCOLUMN column;

 column.mask = LVCF_TEXT|LVCF_FMT|LVCF_WIDTH;
 column.fmt = LVCFMT_LEFT;

 column.pszText = L"Number";
 column.cx = 50;
 (void)ListView_InsertColumn(hListCtrl, 0, &column);

 column.pszText = L"Index";
 column.cx = 45;
 (void)ListView_InsertColumn(hListCtrl, 1, &column);

 column.pszText = L"Handle";
 column.cx = 90;
 (void)ListView_InsertColumn(hListCtrl, 2, &column);

 column.pszText = L"Type";
 column.cx = 80;
 (void)ListView_InsertColumn(hListCtrl, 3, &column);

 column.pszText = L"Process";
 column.cx = 80;
 (void)ListView_InsertColumn(hListCtrl, 4, &column);

 column.pszText = L"KernelData";
 column.cx = 80;
 (void)ListView_InsertColumn(hListCtrl, 5, &column);

 column.pszText = L"UserData";
 column.cx = 80;
 (void)ListView_InsertColumn(hListCtrl, 6, &column);

 column.pszText = L"Type";
 column.cx = 80;
 (void)ListView_InsertColumn(hListCtrl, 7, &column);

 HandleList_Update(hListCtrl, 0);
}
