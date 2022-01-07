
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


 int set_textfont_prop (int *,int,TYPE_1__*) ;

__attribute__((used)) static inline HRESULT set_textfont_propl(ITextFontImpl *font, enum textfont_prop_id propid, LONG value)
{
    textfont_prop_val v;
    v.l = value;
    return set_textfont_prop(font, propid, &v);
}
