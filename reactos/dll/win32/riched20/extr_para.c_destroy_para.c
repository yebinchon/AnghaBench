
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nWidth; int para_num; int text; scalar_t__ nRows; } ;
struct TYPE_12__ {TYPE_1__ para; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ member; } ;
struct TYPE_13__ {scalar_t__ nTotalWidth; int total_rows; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;


 int ME_DestroyDisplayItem (TYPE_4__*) ;
 int ME_DestroyString (int ) ;
 int assert (int) ;
 scalar_t__ diParagraph ;
 scalar_t__ get_total_width (TYPE_3__*) ;
 int para_num_clear (int *) ;
 int remove_marked_para (TYPE_3__*,TYPE_4__*) ;

void destroy_para(ME_TextEditor *editor, ME_DisplayItem *item)
{
    assert(item->type == diParagraph);

    if (item->member.para.nWidth == editor->nTotalWidth)
    {
        item->member.para.nWidth = 0;
        editor->nTotalWidth = get_total_width(editor);
    }
    editor->total_rows -= item->member.para.nRows;
    ME_DestroyString(item->member.para.text);
    para_num_clear( &item->member.para.para_num );
    remove_marked_para(editor, item);
    ME_DestroyDisplayItem(item);
}
