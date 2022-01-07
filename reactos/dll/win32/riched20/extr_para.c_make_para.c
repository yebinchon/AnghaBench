
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * prev_marked; int next_marked; int nFlags; int fmt; } ;
struct TYPE_7__ {TYPE_1__ para; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_DisplayItem ;


 int MEPF_REWRAP ;
 TYPE_3__* ME_MakeDI (int ) ;
 int ME_SetDefaultParaFormat (int *,int *) ;
 int diParagraph ;

__attribute__((used)) static ME_DisplayItem *make_para(ME_TextEditor *editor)
{
    ME_DisplayItem *item = ME_MakeDI(diParagraph);

    ME_SetDefaultParaFormat(editor, &item->member.para.fmt);
    item->member.para.nFlags = MEPF_REWRAP;
    item->member.para.next_marked = item->member.para.prev_marked = ((void*)0);

    return item;
}
