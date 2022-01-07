
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int ITextFont ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ CO_E_RELEASED ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ ITextFont_GetBold (int *,int *) ;
 scalar_t__ ITextFont_GetForeColor (int *,int *) ;
 scalar_t__ ITextFont_GetItalic (int *,int *) ;
 scalar_t__ ITextFont_GetLanguageID (int *,int *) ;
 scalar_t__ ITextFont_GetName (int *,int *) ;
 scalar_t__ ITextFont_GetSize (int *,float*) ;
 scalar_t__ ITextFont_GetStrikeThrough (int *,int *) ;
 scalar_t__ ITextFont_GetSubscript (int *,int *) ;
 scalar_t__ ITextFont_GetSuperscript (int *,int *) ;
 scalar_t__ ITextFont_GetUnderline (int *,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_detached_font_getters(ITextFont *font, BOOL duplicate)
{
  HRESULT hr, hrexp = duplicate ? S_OK : CO_E_RELEASED;
  LONG value;
  float size;
  BSTR str;

  hr = ITextFont_GetBold(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetBold(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetForeColor(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetForeColor(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetItalic(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetItalic(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetLanguageID(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetLanguageID(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetName(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetName(font, &str);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetSize(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetSize(font, &size);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetStrikeThrough(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetStrikeThrough(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetSubscript(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetSubscript(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetSuperscript(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetSuperscript(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);

  hr = ITextFont_GetUnderline(font, ((void*)0));
  ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = ITextFont_GetUnderline(font, &value);
  ok(hr == hrexp, "got 0x%08x\n", hr);
}
