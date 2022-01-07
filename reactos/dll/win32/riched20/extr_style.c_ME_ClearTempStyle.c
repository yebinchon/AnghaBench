
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pBuffer; } ;
struct TYPE_4__ {int * pCharStyle; } ;
typedef TYPE_2__ ME_TextEditor ;


 int ME_ReleaseStyle (int *) ;

void ME_ClearTempStyle(ME_TextEditor *editor)
{
  if (!editor->pBuffer->pCharStyle) return;
  ME_ReleaseStyle(editor->pBuffer->pCharStyle);
  editor->pBuffer->pCharStyle = ((void*)0);
}
