
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nPos; } ;
struct TYPE_8__ {scalar_t__ nPos; } ;
struct TYPE_11__ {TYPE_2__ vert_si; TYPE_1__ horz_si; int texthost; } ;
struct TYPE_10__ {int right; int bottom; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef int BOOL ;


 int FALSE ;
 int ITextHost_TxGetClientRect (int ,TYPE_3__*) ;
 int ME_FindPixelPos (TYPE_4__*,int,int,int *,int *,int ) ;
 int TRUE ;

BOOL ME_CharFromPos(ME_TextEditor *editor, int x, int y,
                    ME_Cursor *cursor, BOOL *isExact)
{
  RECT rc;
  BOOL bResult;

  ITextHost_TxGetClientRect(editor->texthost, &rc);
  if (x < 0 || y < 0 || x >= rc.right || y >= rc.bottom) {
    if (isExact) *isExact = FALSE;
    return FALSE;
  }
  x += editor->horz_si.nPos;
  y += editor->vert_si.nPos;
  bResult = ME_FindPixelPos(editor, x, y, cursor, ((void*)0), FALSE);
  if (isExact) *isExact = bResult;
  return TRUE;
}
