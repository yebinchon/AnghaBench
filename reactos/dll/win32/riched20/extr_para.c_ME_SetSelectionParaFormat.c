
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* next_para; } ;
struct TYPE_6__ {TYPE_3__ para; } ;
struct TYPE_7__ {TYPE_1__ member; } ;
typedef int PARAFORMAT2 ;
typedef int ME_TextEditor ;
typedef TYPE_2__ ME_DisplayItem ;
typedef int BOOL ;


 int ME_GetSelectionParas (int *,TYPE_2__**,TYPE_2__**) ;
 int ME_SetParaFormat (int *,TYPE_3__*,int const*) ;
 int TRUE ;

BOOL ME_SetSelectionParaFormat(ME_TextEditor *editor, const PARAFORMAT2 *pFmt)
{
  ME_DisplayItem *para, *para_end;

  ME_GetSelectionParas(editor, &para, &para_end);

  do {
    ME_SetParaFormat(editor, &para->member.para, pFmt);
    if (para == para_end)
      break;
    para = para->member.para.next_para;
  } while(1);

  return TRUE;
}
