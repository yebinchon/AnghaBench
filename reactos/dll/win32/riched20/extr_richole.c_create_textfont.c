
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ str; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; TYPE_2__ ITextFont_iface; void* set_cache_enabled; void* get_cache_enabled; int * range; TYPE_4__* props; } ;
typedef int ITextRange ;
typedef TYPE_1__ ITextFontImpl ;
typedef TYPE_2__ ITextFont ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 void* FALSE ;
 size_t FONT_NAME ;
 int ITextRange_AddRef (int *) ;
 int S_OK ;
 scalar_t__ SysAllocString (scalar_t__) ;
 void* TRUE ;
 TYPE_1__* heap_alloc (int) ;
 int memcpy (TYPE_4__**,TYPE_4__**,int) ;
 int textfont_cache_range_props (TYPE_1__*) ;
 int textfontvtbl ;

__attribute__((used)) static HRESULT create_textfont(ITextRange *range, const ITextFontImpl *src, ITextFont **ret)
{
    ITextFontImpl *font;

    *ret = ((void*)0);
    font = heap_alloc(sizeof(*font));
    if (!font)
        return E_OUTOFMEMORY;

    font->ITextFont_iface.lpVtbl = &textfontvtbl;
    font->ref = 1;

    if (src) {
        font->range = ((void*)0);
        font->get_cache_enabled = TRUE;
        font->set_cache_enabled = TRUE;
        memcpy(&font->props, &src->props, sizeof(font->props));
        if (font->props[FONT_NAME].str)
            font->props[FONT_NAME].str = SysAllocString(font->props[FONT_NAME].str);
    }
    else {
        font->range = range;
        ITextRange_AddRef(range);


        font->get_cache_enabled = FALSE;
        font->set_cache_enabled = FALSE;
        textfont_cache_range_props(font);
    }

    *ret = &font->ITextFont_iface;
    return S_OK;
}
