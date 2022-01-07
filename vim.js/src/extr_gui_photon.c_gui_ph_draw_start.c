
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimTextArea; } ;
typedef int PhGC_t ;


 int PgClearClippingsCx (int *) ;
 int PgClearTranslationCx (int *) ;
 int * PgGetGC () ;
 int PgSetRegion (int ) ;
 int PgSetTranslation (int *,int ) ;
 int Pg_RELATIVE ;
 int PhTranslatePoint (int *,int ) ;
 int PtFindDisjoint (int ) ;
 int PtWidgetOffset (int ,int *) ;
 int PtWidgetPos (int ,int *) ;
 int PtWidgetRid (int ) ;
 TYPE_1__ gui ;
 int gui_ph_raw_offset ;

__attribute__((used)) static void
gui_ph_draw_start(void)
{
    PhGC_t *gc;

    gc = PgGetGC();
    PgSetRegion(PtWidgetRid(PtFindDisjoint(gui.vimTextArea)));
    PgClearClippingsCx(gc);
    PgClearTranslationCx(gc);

    PtWidgetOffset(gui.vimTextArea, &gui_ph_raw_offset);
    PhTranslatePoint(&gui_ph_raw_offset, PtWidgetPos(gui.vimTextArea, ((void*)0)));

    PgSetTranslation(&gui_ph_raw_offset, Pg_RELATIVE);
}
