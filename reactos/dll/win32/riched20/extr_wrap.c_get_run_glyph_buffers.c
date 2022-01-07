
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int max_glyphs; int* advances; scalar_t__ glyphs; int * offsets; int * vis_attrs; } ;
typedef int SCRIPT_VISATTR ;
typedef TYPE_1__ ME_Run ;
typedef int GOFFSET ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ heap_alloc (int) ;
 int heap_free (scalar_t__) ;

__attribute__((used)) static BOOL get_run_glyph_buffers( ME_Run *run )
{
    heap_free( run->glyphs );
    run->glyphs = heap_alloc( run->max_glyphs * (sizeof(WORD) + sizeof(SCRIPT_VISATTR) + sizeof(int) + sizeof(GOFFSET)) );
    if (!run->glyphs) return FALSE;

    run->vis_attrs = (SCRIPT_VISATTR*)((char*)run->glyphs + run->max_glyphs * sizeof(WORD));
    run->advances = (int*)((char*)run->glyphs + run->max_glyphs * (sizeof(WORD) + sizeof(SCRIPT_VISATTR)));
    run->offsets = (GOFFSET*)((char*)run->glyphs + run->max_glyphs * (sizeof(WORD) + sizeof(SCRIPT_VISATTR) + sizeof(int)));

    return TRUE;
}
