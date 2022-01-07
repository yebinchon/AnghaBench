
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nFlags; } ;
struct TYPE_7__ {TYPE_1__ para; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_DisplayItem ;


 int MEPF_REWRAP ;
 int add_marked_para (int *,TYPE_3__*) ;

void mark_para_rewrap(ME_TextEditor *editor, ME_DisplayItem *para)
{
    para->member.para.nFlags |= MEPF_REWRAP;
    add_marked_para(editor, para);
}
