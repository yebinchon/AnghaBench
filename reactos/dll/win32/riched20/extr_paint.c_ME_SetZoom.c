
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nZoomNumerator; int nZoomDenominator; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int BOOL ;


 int FALSE ;
 int ME_RewrapRepaint (TYPE_1__*) ;
 int TRUE ;

BOOL
ME_SetZoom(ME_TextEditor *editor, int numerator, int denominator)
{


  if (numerator == 0 && denominator == 0)
  {
    editor->nZoomNumerator = editor->nZoomDenominator = 0;
    return TRUE;
  }
  if (numerator <= 0 || denominator <= 0)
    return FALSE;
  if (numerator * 64 <= denominator || numerator / denominator >= 64)
    return FALSE;

  editor->nZoomNumerator = numerator;
  editor->nZoomDenominator = denominator;

  ME_RewrapRepaint(editor);
  return TRUE;
}
