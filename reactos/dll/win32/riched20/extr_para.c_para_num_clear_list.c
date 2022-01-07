
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* next_para; int para_num; int fmt; } ;
struct TYPE_6__ {TYPE_3__ para; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ member; } ;
typedef int PARAFORMAT2 ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_Paragraph ;


 scalar_t__ diParagraph ;
 int get_di_from_para (TYPE_3__*) ;
 int mark_para_rewrap (int *,int ) ;
 int para_num_clear (int *) ;
 scalar_t__ para_num_same_list (int *,int const*) ;

__attribute__((used)) static void para_num_clear_list( ME_TextEditor *editor, ME_Paragraph *para, const PARAFORMAT2 *orig_fmt )
{
    do
    {
        mark_para_rewrap(editor, get_di_from_para(para));
        para_num_clear( &para->para_num );
        if (para->next_para->type != diParagraph) break;
        para = &para->next_para->member.para;
    } while (para_num_same_list( &para->fmt, orig_fmt ));
}
