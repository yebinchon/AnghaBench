
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int BM_GETSTATE ;
 int BST_CHECKED ;
 int GetDlgItem (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static inline BOOL get_check(HWND hwnd, INT id)
{
 return BST_CHECKED&SendMessageW(GetDlgItem(hwnd, id), BM_GETSTATE, 0, 0);
}
