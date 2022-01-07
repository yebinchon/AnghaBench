
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nPos; } ;
struct TYPE_6__ {TYPE_1__ vert_si; } ;
typedef TYPE_2__ ME_TextEditor ;


 int ME_VScrollAbs (TYPE_2__*,scalar_t__) ;

void ME_ScrollUp(ME_TextEditor *editor, int cy)
{
  ME_VScrollAbs(editor, editor->vert_si.nPos - cy);
}
