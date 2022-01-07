
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPEN ;
typedef int HDC ;


 int ARRAYSIZE (int *) ;
 int CreatePen (int ,int,int ) ;
 int LineTo (int ,scalar_t__,int ) ;
 int MoveToEx (int ,scalar_t__,int ,int *) ;
 int RGB (int ,int ,int ) ;
 int SelectObject (int ,int ) ;
 float fScale ;
 scalar_t__ fw ;
 scalar_t__ mw ;
 int * section_vpos ;

void OnPaint(HDC hdc)
{
 int i;
 HPEN hp = CreatePen(0, (fScale < 1.5f) ? 2 : 3, RGB(0, 0, 0));
 SelectObject(hdc, hp);
 for (i = 0; i < ARRAYSIZE(section_vpos); i++) {
  MoveToEx(hdc, mw + 10, section_vpos[i], ((void*)0));
  LineTo(hdc, mw + fw, section_vpos[i]);
 }
}
