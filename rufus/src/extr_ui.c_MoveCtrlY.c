
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int GetDlgItem (int ,int) ;
 int ResizeMoveCtrl (int ,int ,int ,int,int ,int ,float) ;

__attribute__((used)) static __inline void MoveCtrlY(HWND hDlg, int nID, int vertical_shift) {
 ResizeMoveCtrl(hDlg, GetDlgItem(hDlg, nID), 0, vertical_shift, 0, 0, 1.0f);
}
