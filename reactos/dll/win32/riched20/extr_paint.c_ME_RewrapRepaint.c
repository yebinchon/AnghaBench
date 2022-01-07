
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_TextEditor ;


 int ME_MarkAllForWrapping (int *) ;
 int ME_Repaint (int *) ;
 int ME_UpdateScrollBar (int *) ;
 int ME_WrapMarkedParagraphs (int *) ;

void
ME_RewrapRepaint(ME_TextEditor *editor)
{



  ME_MarkAllForWrapping(editor);
  ME_WrapMarkedParagraphs(editor);
  ME_UpdateScrollBar(editor);
  ME_Repaint(editor);
}
