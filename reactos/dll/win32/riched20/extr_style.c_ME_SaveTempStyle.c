
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pBuffer; } ;
struct TYPE_4__ {int * pCharStyle; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int ME_Style ;


 int ME_AddRefStyle (int *) ;
 int ME_ReleaseStyle (int *) ;

void ME_SaveTempStyle(ME_TextEditor *editor, ME_Style *style)
{
  ME_Style *old_style = editor->pBuffer->pCharStyle;

  if (style) ME_AddRefStyle( style );
  editor->pBuffer->pCharStyle = style;
  if (old_style) ME_ReleaseStyle( old_style );
}
