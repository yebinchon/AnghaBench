
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nOffset; int pRun; int pPara; } ;
typedef int ME_TextEditor ;
typedef TYPE_1__ ME_Cursor ;


 int ME_RunOfsFromCharOfs (int *,int,int *,int *,int *) ;

void ME_CursorFromCharOfs(ME_TextEditor *editor, int nCharOfs, ME_Cursor *pCursor)
{
  ME_RunOfsFromCharOfs(editor, nCharOfs, &pCursor->pPara,
                       &pCursor->pRun, &pCursor->nOffset);
}
