
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
 int S_OK ;
 int get_textfont_propl (int *,int,int*) ;
 int set_textfont_prop (int *,int,TYPE_1__*) ;





__attribute__((used)) static HRESULT set_textfont_propd(ITextFontImpl *font, enum textfont_prop_id propid, LONG value)
{
    textfont_prop_val v;

    switch (value)
    {
    case 128:
        return S_OK;
    case 130: {
        LONG oldvalue;
        get_textfont_propl(font, propid, &oldvalue);
        if (oldvalue == 131)
            value = 129;
        else if (oldvalue == 129)
            value = 131;
        else
            return E_INVALIDARG;

    }
    case 129:
    case 131:
        v.l = value;
        return set_textfont_prop(font, propid, &v);
    default:
        return E_INVALIDARG;
    }
}
