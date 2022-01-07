
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int POINTL ;
typedef int DWORD ;


 int DROPEFFECT_COPY ;
 int DROPEFFECT_MOVE ;
 int MK_CONTROL ;
 int MK_SHIFT ;

__attribute__((used)) static DWORD DropEffect(DWORD grfKeyState, POINTL pt, DWORD dwAllowed)
{
 DWORD dwEffect = 0;




 if(grfKeyState & MK_CONTROL)
 {
  dwEffect = dwAllowed & DROPEFFECT_COPY;
 }
 else if(grfKeyState & MK_SHIFT)
 {
  dwEffect = dwAllowed & DROPEFFECT_MOVE;
 }



 if(dwEffect == 0)
 {
  if(dwAllowed & DROPEFFECT_COPY) dwEffect = DROPEFFECT_COPY;
  if(dwAllowed & DROPEFFECT_MOVE) dwEffect = DROPEFFECT_MOVE;
 }

 return dwEffect;
}
