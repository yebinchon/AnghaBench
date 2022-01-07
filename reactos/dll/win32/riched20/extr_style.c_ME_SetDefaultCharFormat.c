
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int cbSize; } ;
struct TYPE_15__ {int script_cache; int * font_cache; int tm; int fmt; } ;
struct TYPE_14__ {TYPE_1__* pBuffer; } ;
struct TYPE_13__ {TYPE_3__* pDefaultStyle; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef TYPE_3__ ME_Style ;
typedef TYPE_4__ CHARFORMAT2W ;


 TYPE_3__* ME_ApplyStyle (TYPE_2__*,TYPE_3__*,TYPE_4__*) ;
 int ME_MarkAllForWrapping (TYPE_2__*) ;
 int ME_ReleaseStyle (TYPE_3__*) ;
 int ScriptFreeCache (int *) ;
 int assert (int) ;
 int release_font_cache (int *) ;

void ME_SetDefaultCharFormat(ME_TextEditor *editor, CHARFORMAT2W *mod)
{
    ME_Style *style, *def = editor->pBuffer->pDefaultStyle;

    assert(mod->cbSize == sizeof(CHARFORMAT2W));
    style = ME_ApplyStyle(editor, def, mod);
    def->fmt = style->fmt;
    def->tm = style->tm;
    if (def->font_cache)
    {
        release_font_cache( def->font_cache );
        def->font_cache = ((void*)0);
    }
    ScriptFreeCache( &def->script_cache );
    ME_ReleaseStyle( style );
    ME_MarkAllForWrapping( editor );
}
