
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {TYPE_3__* pPara; } ;
struct TYPE_8__ {int nCharOfs; TYPE_3__* next_para; } ;
struct TYPE_9__ {TYPE_1__ para; } ;
struct TYPE_10__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_DisplayItem ;
typedef TYPE_4__ ME_Cursor ;
typedef int HGLOBAL ;
typedef int HANDLE ;


 int FALSE ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 int * GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ME_GetCursorOfs (TYPE_4__ const*) ;
 int ME_GetTextW (int *,int *,int,TYPE_4__ const*,int,int ,int ) ;
 int TRUE ;

__attribute__((used)) static HGLOBAL get_unicode_text(ME_TextEditor *editor, const ME_Cursor *start, int nChars)
{
    int pars = 0;
    WCHAR *data;
    HANDLE ret;
    ME_DisplayItem *para;
    int nEnd = ME_GetCursorOfs(start) + nChars;


    para = start->pPara;
    while((para = para->member.para.next_para) &&
          para->member.para.nCharOfs <= nEnd)
        pars++;

    ret = GlobalAlloc(GMEM_MOVEABLE, sizeof(WCHAR) * (nChars + pars + 1));
    data = GlobalLock(ret);
    ME_GetTextW(editor, data, nChars + pars, start, nChars, TRUE, FALSE);
    GlobalUnlock(ret);
    return ret;
}
