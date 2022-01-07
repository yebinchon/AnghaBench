
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nPos; } ;
struct TYPE_6__ {TYPE_1__ horz_si; } ;
typedef TYPE_2__ ME_TextEditor ;


 int ME_HScrollAbs (TYPE_2__*,scalar_t__) ;

void ME_ScrollLeft(ME_TextEditor *editor, int cx)
{
  ME_HScrollAbs(editor, editor->horz_si.nPos - cx);
}
