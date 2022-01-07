
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* prev_marked; TYPE_7__* next_marked; } ;
struct TYPE_14__ {TYPE_4__ para; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_5__ member; } ;
struct TYPE_15__ {TYPE_7__* first_marked_para; } ;
struct TYPE_10__ {TYPE_7__* next_marked; } ;
struct TYPE_11__ {TYPE_1__ para; } ;
struct TYPE_12__ {TYPE_2__ member; } ;
typedef TYPE_6__ ME_TextEditor ;
typedef TYPE_7__ ME_DisplayItem ;


 int assert (int) ;
 scalar_t__ diParagraph ;

void remove_marked_para(ME_TextEditor *editor, ME_DisplayItem *di)
{
    ME_DisplayItem *head = editor->first_marked_para;

    assert(di->type == diParagraph);
    if (!di->member.para.next_marked && !di->member.para.prev_marked)
    {
        if (di == head)
            editor->first_marked_para = ((void*)0);
    }
    else if (di->member.para.next_marked && di->member.para.prev_marked)
    {
        di->member.para.prev_marked->member.para.next_marked = di->member.para.next_marked;
        di->member.para.next_marked->member.para.prev_marked = di->member.para.prev_marked;
        di->member.para.prev_marked = di->member.para.next_marked = ((void*)0);
    }
    else if (di->member.para.next_marked)
    {
        assert(di == editor->first_marked_para);
        editor->first_marked_para = di->member.para.next_marked;
        di->member.para.next_marked->member.para.prev_marked = ((void*)0);
        di->member.para.next_marked = ((void*)0);
    }
    else
    {
        di->member.para.prev_marked->member.para.next_marked = ((void*)0);
        di->member.para.prev_marked = ((void*)0);
    }
}
