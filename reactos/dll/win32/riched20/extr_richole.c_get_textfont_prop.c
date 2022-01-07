
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int textfont_prop_val ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
struct TYPE_3__ {int range; int * props; scalar_t__ get_cache_enabled; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ ITextFontImpl ;
typedef int IRichEditOleImpl ;
typedef int HRESULT ;


 int CO_E_RELEASED ;
 scalar_t__ FAILED (int ) ;
 int ITextRange_GetEnd (int ,scalar_t__*) ;
 int ITextRange_GetStart (int ,scalar_t__*) ;
 int S_OK ;
 int * get_range_reole (int ) ;
 int get_textfont_prop_for_pos (int const*,scalar_t__,int,int *) ;
 int init_textfont_prop_value (int,int *) ;
 int is_equal_textfont_prop_value (int,int *,int *) ;

__attribute__((used)) static HRESULT get_textfont_prop(const ITextFontImpl *font, enum textfont_prop_id propid, textfont_prop_val *value)
{
    const IRichEditOleImpl *reole;
    textfont_prop_val v;
    LONG start, end, i;
    HRESULT hr;


    if (!font->range || font->get_cache_enabled) {
        *value = font->props[propid];
        return S_OK;
    }

    if (!(reole = get_range_reole(font->range)))
        return CO_E_RELEASED;

    init_textfont_prop_value(propid, value);

    ITextRange_GetStart(font->range, &start);
    ITextRange_GetEnd(font->range, &end);


    hr = get_textfont_prop_for_pos(reole, start, propid, &v);
    if (FAILED(hr))
        return hr;

    for (i = start + 1; i < end; i++) {
        textfont_prop_val cur;

        hr = get_textfont_prop_for_pos(reole, i, propid, &cur);
        if (FAILED(hr))
            return hr;

        if (!is_equal_textfont_prop_value(propid, &v, &cur))
            return S_OK;
    }

    *value = v;
    return S_OK;
}
