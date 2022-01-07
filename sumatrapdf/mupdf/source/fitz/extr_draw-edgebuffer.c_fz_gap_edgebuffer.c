
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_rasterizer ;
typedef int fz_output ;
struct TYPE_6__ {TYPE_1__* cursor; scalar_t__ app; } ;
typedef TYPE_2__ fz_edgebuffer ;
typedef int fz_context ;
struct TYPE_5__ {int unset; int can_save; void* d; scalar_t__ saved; } ;


 void* DIRN_UNSET ;
 int cursor_flush (TYPE_2__*) ;
 scalar_t__ debugging_scan_converter ;
 int fz_edgebuffer_print_app (int *,int *,TYPE_2__*) ;
 int * fz_stderr (int *) ;
 int fz_write_printf (int *,int *,char*) ;

__attribute__((used)) static void fz_gap_edgebuffer(fz_context *ctx, fz_rasterizer *ras)
{
 fz_edgebuffer *eb = (fz_edgebuffer *)ras;

 if (eb->app)
 {
  cursor_flush(eb);
  eb->cursor[0].saved = 0;
  eb->cursor[0].unset = 1;
  eb->cursor[0].can_save = 1;
  eb->cursor[0].d = DIRN_UNSET;
  eb->cursor[1].saved = 0;
  eb->cursor[1].unset = 1;
  eb->cursor[1].can_save = 1;
  eb->cursor[1].d = DIRN_UNSET;
  eb->cursor[2].saved = 0;
  eb->cursor[2].unset = 1;
  eb->cursor[2].can_save = 1;
  eb->cursor[2].d = DIRN_UNSET;
 }
}
