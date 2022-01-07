
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nEventMask; scalar_t__ nTotalLength; int texthost; int nTotalWidth; } ;
struct TYPE_10__ {scalar_t__ bottom; int right; } ;
struct TYPE_8__ {int code; scalar_t__ idFrom; int * hwndFrom; } ;
struct TYPE_9__ {TYPE_1__ nmhdr; TYPE_3__ rc; } ;
typedef TYPE_2__ REQRESIZE ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ ME_TextEditor ;
typedef scalar_t__ BOOL ;


 int ENM_REQUESTRESIZE ;
 int EN_REQUESTRESIZE ;
 int ITextHost_TxGetClientRect (int ,TYPE_3__*) ;
 int ITextHost_TxNotify (int ,int ,TYPE_2__*) ;

void
ME_SendRequestResize(ME_TextEditor *editor, BOOL force)
{
  if (editor->nEventMask & ENM_REQUESTRESIZE)
  {
    RECT rc;

    ITextHost_TxGetClientRect(editor->texthost, &rc);

    if (force || rc.bottom != editor->nTotalLength)
    {
      REQRESIZE info;

      info.nmhdr.hwndFrom = ((void*)0);
      info.nmhdr.idFrom = 0;
      info.nmhdr.code = EN_REQUESTRESIZE;
      info.rc = rc;
      info.rc.right = editor->nTotalWidth;
      info.rc.bottom = editor->nTotalLength;

      editor->nEventMask &= ~ENM_REQUESTRESIZE;
      ITextHost_TxNotify(editor->texthost, info.nmhdr.code, &info);
      editor->nEventMask |= ENM_REQUESTRESIZE;
    }
  }
}
