
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cpMin; scalar_t__ cpMax; } ;
struct TYPE_12__ {int nEventMask; int texthost; TYPE_1__ notified_cr; } ;
struct TYPE_10__ {int code; scalar_t__ idFrom; int * hwndFrom; } ;
struct TYPE_11__ {int seltyp; TYPE_2__ nmhdr; TYPE_1__ chrg; } ;
typedef TYPE_3__ SELCHANGE ;
typedef TYPE_4__ ME_TextEditor ;


 int ENM_SELCHANGE ;
 int EN_SELCHANGE ;
 int ITextHost_TxNotify (int ,int ,TYPE_3__*) ;
 int ME_ClearTempStyle (TYPE_4__*) ;
 int ME_GetSelectionOfs (TYPE_4__*,scalar_t__*,scalar_t__*) ;
 int SEL_EMPTY ;
 int SEL_MULTICHAR ;
 int SEL_TEXT ;
 int TRACE (char*,scalar_t__,scalar_t__,int,char*,char*) ;

void ME_SendSelChange(ME_TextEditor *editor)
{
  SELCHANGE sc;

  sc.nmhdr.hwndFrom = ((void*)0);
  sc.nmhdr.idFrom = 0;
  sc.nmhdr.code = EN_SELCHANGE;
  ME_GetSelectionOfs(editor, &sc.chrg.cpMin, &sc.chrg.cpMax);
  sc.seltyp = SEL_EMPTY;
  if (sc.chrg.cpMin != sc.chrg.cpMax)
    sc.seltyp |= SEL_TEXT;
  if (sc.chrg.cpMin < sc.chrg.cpMax+1)
    sc.seltyp |= SEL_MULTICHAR;

  if (sc.chrg.cpMin != editor->notified_cr.cpMin || sc.chrg.cpMax != editor->notified_cr.cpMax)
  {
    ME_ClearTempStyle(editor);

    editor->notified_cr = sc.chrg;

    if (editor->nEventMask & ENM_SELCHANGE)
    {
      TRACE("cpMin=%d cpMax=%d seltyp=%d (%s %s)\n",
            sc.chrg.cpMin, sc.chrg.cpMax, sc.seltyp,
            (sc.seltyp & SEL_TEXT) ? "SEL_TEXT" : "",
            (sc.seltyp & SEL_MULTICHAR) ? "SEL_MULTICHAR" : "");
      ITextHost_TxNotify(editor->texthost, sc.nmhdr.code, &sc);
    }
  }
}
