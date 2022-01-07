
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pCursors; } ;
struct TYPE_4__ {scalar_t__ pRun; scalar_t__ nOffset; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int BOOL ;



BOOL ME_IsSelection(ME_TextEditor *editor)
{
  return editor->pCursors[0].pRun != editor->pCursors[1].pRun ||
         editor->pCursors[0].nOffset != editor->pCursors[1].nOffset;
}
