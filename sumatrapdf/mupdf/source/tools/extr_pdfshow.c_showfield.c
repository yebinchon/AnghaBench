
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int Btn ;
 int Ch ;
 int FT ;
 int Kids ;
 int PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF ;
 int PDF_BTN_FIELD_IS_PUSHBUTTON ;
 int PDF_BTN_FIELD_IS_RADIO ;
 int PDF_BTN_FIELD_IS_RADIOS_IN_UNISON ;
 int PDF_CH_FIELD_IS_COMBO ;
 int PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE ;
 int PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK ;
 int PDF_CH_FIELD_IS_EDIT ;
 int PDF_CH_FIELD_IS_MULTI_SELECT ;
 int PDF_CH_FIELD_IS_SORT ;
 int PDF_FIELD_IS_NO_EXPORT ;
 int PDF_FIELD_IS_READ_ONLY ;
 int PDF_FIELD_IS_REQUIRED ;
 int * PDF_NAME (int ) ;
 int PDF_TX_FIELD_IS_COMB ;
 int PDF_TX_FIELD_IS_DO_NOT_SCROLL ;
 int PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK ;
 int PDF_TX_FIELD_IS_FILE_SELECT ;
 int PDF_TX_FIELD_IS_MULTILINE ;
 int PDF_TX_FIELD_IS_PASSWORD ;
 int PDF_TX_FIELD_IS_RICH_TEXT ;
 int Parent ;
 int TU ;
 int Tx ;
 int ctx ;
 int fz_write_printf (int ,int ,char*,...) ;
 int fz_write_string (int ,int ,char*) ;
 int out ;
 int * pdf_array_get (int ,int *,int) ;
 int pdf_array_len (int ,int *) ;
 int * pdf_dict_get (int ,int *,int *) ;
 int * pdf_dict_get_inheritable (int ,int *,int *) ;
 char* pdf_dict_get_text_string (int ,int *,int *) ;
 int pdf_dict_getp (int ,int *,char*) ;
 int pdf_field_flags (int ,int *) ;
 char* pdf_field_name (int ,int *) ;
 char const* pdf_to_name (int ,int *) ;
 char const* pdf_to_num (int ,int *) ;
 int showaction (int ,char*) ;

__attribute__((used)) static void showfield(pdf_obj *field)
{
 pdf_obj *kids, *ft, *parent;
 const char *tu;
 char *t;
 int ff;
 int i, n;

 t = pdf_field_name(ctx, field);
 tu = pdf_dict_get_text_string(ctx, field, PDF_NAME(TU));
 ft = pdf_dict_get_inheritable(ctx, field, PDF_NAME(FT));
 ff = pdf_field_flags(ctx, field);
 parent = pdf_dict_get(ctx, field, PDF_NAME(Parent));

 fz_write_printf(ctx, out, "field %d\n", pdf_to_num(ctx, field));
 fz_write_printf(ctx, out, "    Type: %s\n", pdf_to_name(ctx, ft));
 if (ff)
 {
  fz_write_printf(ctx, out, "    Flags:");
  if (ff & PDF_FIELD_IS_READ_ONLY) fz_write_string(ctx, out, " readonly");
  if (ff & PDF_FIELD_IS_REQUIRED) fz_write_string(ctx, out, " required");
  if (ff & PDF_FIELD_IS_NO_EXPORT) fz_write_string(ctx, out, " noExport");
  if (ft == PDF_NAME(Btn))
  {
   if (ff & PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF) fz_write_string(ctx, out, " noToggleToOff");
   if (ff & PDF_BTN_FIELD_IS_RADIO) fz_write_string(ctx, out, " radio");
   if (ff & PDF_BTN_FIELD_IS_PUSHBUTTON) fz_write_string(ctx, out, " pushButton");
   if (ff & PDF_BTN_FIELD_IS_RADIOS_IN_UNISON) fz_write_string(ctx, out, " radiosInUnison");
  }
  if (ft == PDF_NAME(Tx))
  {
   if (ff & PDF_TX_FIELD_IS_MULTILINE) fz_write_string(ctx, out, " multiline");
   if (ff & PDF_TX_FIELD_IS_PASSWORD) fz_write_string(ctx, out, " password");
   if (ff & PDF_TX_FIELD_IS_FILE_SELECT) fz_write_string(ctx, out, " fileSelect");
   if (ff & PDF_TX_FIELD_IS_DO_NOT_SPELL_CHECK) fz_write_string(ctx, out, " dontSpellCheck");
   if (ff & PDF_TX_FIELD_IS_DO_NOT_SCROLL) fz_write_string(ctx, out, " dontScroll");
   if (ff & PDF_TX_FIELD_IS_COMB) fz_write_string(ctx, out, " comb");
   if (ff & PDF_TX_FIELD_IS_RICH_TEXT) fz_write_string(ctx, out, " richText");
  }
  if (ft == PDF_NAME(Ch))
  {
   if (ff & PDF_CH_FIELD_IS_COMBO) fz_write_string(ctx, out, " combo");
   if (ff & PDF_CH_FIELD_IS_EDIT) fz_write_string(ctx, out, " edit");
   if (ff & PDF_CH_FIELD_IS_SORT) fz_write_string(ctx, out, " sort");
   if (ff & PDF_CH_FIELD_IS_MULTI_SELECT) fz_write_string(ctx, out, " multiSelect");
   if (ff & PDF_CH_FIELD_IS_DO_NOT_SPELL_CHECK) fz_write_string(ctx, out, " dontSpellCheck");
   if (ff & PDF_CH_FIELD_IS_COMMIT_ON_SEL_CHANGE) fz_write_string(ctx, out, " commitOnSelChange");
  }
  fz_write_string(ctx, out, "\n");
 }
 fz_write_printf(ctx, out, "    Name: %(\n", t);
 if (*tu)
  fz_write_printf(ctx, out, "    Label: %q\n", tu);
 if (parent)
  fz_write_printf(ctx, out, "    Parent: %d\n", pdf_to_num(ctx, parent));

 showaction(pdf_dict_getp(ctx, field, "A"), "Action");

 showaction(pdf_dict_getp(ctx, field, "AA/K"), "Keystroke");
 showaction(pdf_dict_getp(ctx, field, "AA/V"), "Validate");
 showaction(pdf_dict_getp(ctx, field, "AA/F"), "Format");
 showaction(pdf_dict_getp(ctx, field, "AA/C"), "Calculate");

 showaction(pdf_dict_getp(ctx, field, "AA/E"), "Enter");
 showaction(pdf_dict_getp(ctx, field, "AA/X"), "Exit");
 showaction(pdf_dict_getp(ctx, field, "AA/D"), "Down");
 showaction(pdf_dict_getp(ctx, field, "AA/U"), "Up");
 showaction(pdf_dict_getp(ctx, field, "AA/Fo"), "Focus");
 showaction(pdf_dict_getp(ctx, field, "AA/Bl"), "Blur");

 fz_write_string(ctx, out, "\n");

 kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));
 n = pdf_array_len(ctx, kids);
 for (i = 0; i < n; ++i)
  showfield(pdf_array_get(ctx, kids, i));
}
