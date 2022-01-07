
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__ const* next_para; } ;
struct TYPE_8__ {TYPE_1__ para; } ;
struct TYPE_9__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ const ME_DisplayItem ;


 int mark_para_rewrap (int *,TYPE_3__ const*) ;

__attribute__((used)) static void ME_MarkForWrapping(ME_TextEditor *editor, ME_DisplayItem *first, const ME_DisplayItem *last)
{
  while(first != last)
  {
    mark_para_rewrap(editor, first);
    first = first->member.para.next_para;
  }
}
