
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PgSetDrawMode (int ) ;
 int PgSetFillXORColor (int ,int ) ;
 int Pg_BLACK ;
 int Pg_DRAWMODE_OPAQUE ;
 int Pg_DRAWMODE_XOR ;
 int Pg_WHITE ;
 int TRUE ;
 int gui_mch_clear_all () ;
 int gui_mch_flush () ;
 int ui_delay (long,int ) ;

void
gui_mch_flash(int msec)
{
    PgSetFillXORColor(Pg_BLACK, Pg_WHITE);
    PgSetDrawMode(Pg_DRAWMODE_XOR);
    gui_mch_clear_all();
    gui_mch_flush();

    ui_delay((long) msec, TRUE);

    gui_mch_clear_all();
    PgSetDrawMode(Pg_DRAWMODE_OPAQUE);
    gui_mch_flush();
}
