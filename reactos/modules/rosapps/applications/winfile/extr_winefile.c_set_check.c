
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int BM_SETCHECK ;
 int BST_CHECKED ;
 int BST_UNCHECKED ;
 int GetDlgItem (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static inline INT set_check(HWND hwnd, INT id, BOOL on)
{
 return SendMessageW(GetDlgItem(hwnd, id), BM_SETCHECK, on?BST_CHECKED:BST_UNCHECKED, 0);
}
