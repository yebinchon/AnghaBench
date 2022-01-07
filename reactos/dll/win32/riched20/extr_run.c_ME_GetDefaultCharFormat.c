
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pBuffer; } ;
struct TYPE_6__ {TYPE_1__* pDefaultStyle; } ;
struct TYPE_5__ {int fmt; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef int CHARFORMAT2W ;


 int ME_CopyCharFormat (int *,int *) ;

void ME_GetDefaultCharFormat(ME_TextEditor *editor, CHARFORMAT2W *pFmt)
{
  ME_CopyCharFormat(pFmt, &editor->pBuffer->pDefaultStyle->fmt);
}
