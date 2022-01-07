
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pfd; int metrics; } ;
typedef TYPE_1__ TBFontConfig ;


 int g_free (TYPE_1__*) ;
 int pango_font_description_free (scalar_t__) ;
 int pango_font_metrics_unref (int ) ;

__attribute__((used)) static void tbfc_entry_free ( TBFontConfig *tbfc )
{
    pango_font_metrics_unref ( tbfc->metrics );
    if ( tbfc->pfd ) {
        pango_font_description_free ( tbfc->pfd );
    }
    g_free ( tbfc );
}
