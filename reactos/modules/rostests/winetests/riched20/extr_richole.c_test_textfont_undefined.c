
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float LONG ;
typedef int ITextFont ;
typedef float HRESULT ;


 float ITextFont_GetAllCaps (int *,float*) ;
 float ITextFont_GetAnimation (int *,float*) ;
 float ITextFont_GetBackColor (int *,float*) ;
 float ITextFont_GetBold (int *,float*) ;
 float ITextFont_GetEmboss (int *,float*) ;
 float ITextFont_GetEngrave (int *,float*) ;
 float ITextFont_GetForeColor (int *,float*) ;
 float ITextFont_GetHidden (int *,float*) ;
 float ITextFont_GetItalic (int *,float*) ;
 float ITextFont_GetKerning (int *,float*) ;
 float ITextFont_GetLanguageID (int *,float*) ;
 float ITextFont_GetOutline (int *,float*) ;
 float ITextFont_GetPosition (int *,float*) ;
 float ITextFont_GetProtected (int *,float*) ;
 float ITextFont_GetShadow (int *,float*) ;
 float ITextFont_GetSize (int *,float*) ;
 float ITextFont_GetSmallCaps (int *,float*) ;
 float ITextFont_GetSpacing (int *,float*) ;
 float ITextFont_GetStrikeThrough (int *,float*) ;
 float ITextFont_GetSubscript (int *,float*) ;
 float ITextFont_GetSuperscript (int *,float*) ;
 float ITextFont_GetUnderline (int *,float*) ;
 float ITextFont_GetWeight (int *,float*) ;
 float S_OK ;
 int ok (int,char*,float) ;
 float tomFalse ;
 float tomUndefined ;

__attribute__((used)) static void test_textfont_undefined(ITextFont *font)
{
  float valuef;
  LONG value;
  HRESULT hr;

  value = tomFalse;
  hr = ITextFont_GetAllCaps(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetAnimation(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetBackColor(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetBold(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetEmboss(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetForeColor(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetHidden(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetEngrave(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetItalic(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  valuef = 0.0;
  hr = ITextFont_GetKerning(font, &valuef);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(valuef == tomUndefined, "got %.2f\n", valuef);

  value = tomFalse;
  hr = ITextFont_GetLanguageID(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetOutline(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  valuef = 0.0;
  hr = ITextFont_GetPosition(font, &valuef);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(valuef == tomUndefined, "got %.2f\n", valuef);

  value = tomFalse;
  hr = ITextFont_GetProtected(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetShadow(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  valuef = 0.0;
  hr = ITextFont_GetSize(font, &valuef);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(valuef == tomUndefined, "got %.2f\n", valuef);

  value = tomFalse;
  hr = ITextFont_GetSmallCaps(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  valuef = 0.0;
  hr = ITextFont_GetSpacing(font, &valuef);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(valuef == tomUndefined, "got %.2f\n", valuef);

  value = tomFalse;
  hr = ITextFont_GetStrikeThrough(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetSubscript(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetSuperscript(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetUnderline(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);

  value = tomFalse;
  hr = ITextFont_GetWeight(font, &value);
  ok(hr == S_OK, "got 0x%08x\n", hr);
  ok(value == tomUndefined, "got %d\n", value);
}
