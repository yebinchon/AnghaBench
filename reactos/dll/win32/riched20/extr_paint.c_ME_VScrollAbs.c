
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nPos; } ;
struct TYPE_6__ {TYPE_1__ horz_si; } ;
typedef TYPE_2__ ME_TextEditor ;


 int ME_ScrollAbs (TYPE_2__*,int ,int) ;

void ME_VScrollAbs(ME_TextEditor *editor, int y)
{
  ME_ScrollAbs(editor, editor->horz_si.nPos, y);
}
