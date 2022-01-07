
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef int LONG ;
typedef int ITextRange ;
typedef int IRichEditOleImpl ;
typedef int HRESULT ;
typedef int BSTR ;


 int CO_E_RELEASED ;
 int FONT_NAME ;
 int ITextRange_GetStart (int *,int *) ;
 int * get_range_reole (int *) ;
 int get_textfont_prop_for_pos (int const*,int ,int ,TYPE_1__*) ;

__attribute__((used)) static HRESULT textfont_getname_from_range(ITextRange *range, BSTR *ret)
{
    const IRichEditOleImpl *reole;
    textfont_prop_val v;
    HRESULT hr;
    LONG start;

    if (!(reole = get_range_reole(range)))
        return CO_E_RELEASED;

    ITextRange_GetStart(range, &start);
    hr = get_textfont_prop_for_pos(reole, start, FONT_NAME, &v);
    *ret = v.str;
    return hr;
}
