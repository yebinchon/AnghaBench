
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* prev_para; } ;
struct TYPE_7__ {TYPE_1__ para; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_DisplayItem ;


 int MEPF_ROWEND ;
 TYPE_3__* ME_InsertEndParaFromCursor (int *,int ,int ,int,int ) ;
 int cr_lf ;

ME_DisplayItem* ME_InsertTableRowEndFromCursor(ME_TextEditor *editor)
{
  ME_DisplayItem *para;
  para = ME_InsertEndParaFromCursor(editor, 0, cr_lf, 2, MEPF_ROWEND);
  return para->member.para.prev_para;
}
