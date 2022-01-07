
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
typedef int LONG ;
typedef int ITextFontImpl ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int get_textfont_prop (int const*,int,TYPE_1__*) ;

__attribute__((used)) static HRESULT get_textfont_propl(const ITextFontImpl *font, enum textfont_prop_id propid, LONG *value)
{
    textfont_prop_val v;
    HRESULT hr;

    if (!value)
        return E_INVALIDARG;

    hr = get_textfont_prop(font, propid, &v);
    *value = v.l;
    return hr;
}
