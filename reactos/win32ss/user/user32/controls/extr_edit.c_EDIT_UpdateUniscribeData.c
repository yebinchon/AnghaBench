
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int style; TYPE_1__* first_line_def; int ssa; int hwndSelf; int * font; int * text; int password_char; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef int SCRIPT_STRING_ANALYSIS ;
typedef TYPE_1__ LINEDEF ;
typedef int INT ;
typedef int * HFONT ;
typedef scalar_t__ HDC ;
typedef TYPE_2__ EDITSTATE ;


 int EDIT_UpdateUniscribeData_linedef (TYPE_2__*,scalar_t__,TYPE_1__*) ;
 int ES_MULTILINE ;
 int ES_PASSWORD ;
 scalar_t__ GetDC (int ) ;
 int ReleaseDC (int ,scalar_t__) ;
 int SSA_FALLBACK ;
 int SSA_GLYPHS ;
 int SSA_LINK ;
 int SSA_PASSWORD ;
 int ScriptStringAnalyse (scalar_t__,int *,int,double,int,int,int,int *,int *,int *,int *,int *,int *) ;
 int * SelectObject (scalar_t__,int *) ;
 int get_text_length (TYPE_2__*) ;

__attribute__((used)) static SCRIPT_STRING_ANALYSIS EDIT_UpdateUniscribeData(EDITSTATE *es, HDC dc, INT line)
{
 LINEDEF *line_def;

 if (!(es->style & ES_MULTILINE))
 {
  if (!es->ssa)
  {
   INT length = get_text_length(es);
   HFONT old_font = ((void*)0);
   HDC udc = dc;

   if (!udc)
    udc = GetDC(es->hwndSelf);
   if (es->font)
    old_font = SelectObject(udc, es->font);

   if (es->style & ES_PASSWORD)




    ScriptStringAnalyse(udc, &es->password_char, length, (1.5*length+16), -1, SSA_LINK|SSA_FALLBACK|SSA_GLYPHS|SSA_PASSWORD, -1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &es->ssa);

   else




    ScriptStringAnalyse(udc, es->text, length, (1.5*length+16), -1, SSA_LINK|SSA_FALLBACK|SSA_GLYPHS, -1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &es->ssa);


   if (es->font)
    SelectObject(udc, old_font);
   if (udc != dc)
    ReleaseDC(es->hwndSelf, udc);
  }
  return es->ssa;
 }
 else
 {
  line_def = es->first_line_def;
  while (line_def && line)
  {
   line_def = line_def->next;
   line--;
  }

  return EDIT_UpdateUniscribeData_linedef(es,dc,line_def);
 }
}
