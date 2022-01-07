
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct block_def {scalar_t__ textlen; int * textstart; } ;
struct TYPE_15__ {scalar_t__ col; int lnum; } ;
typedef TYPE_2__ pos_T ;
struct TYPE_16__ {int is_VIsual; scalar_t__ start_vcol; scalar_t__ end_vcol; int op_type; int block_mode; } ;
typedef TYPE_3__ oparg_T ;
typedef int linenr_T ;
typedef long colnr_T ;
typedef int char_u ;
typedef int buf2 ;
typedef int buf1 ;
struct TYPE_14__ {int ml_flags; int ml_line_count; } ;
struct TYPE_18__ {TYPE_1__ b_ml; scalar_t__ b_p_bin; int b_p_eol; } ;
struct TYPE_17__ {scalar_t__ w_curswant; TYPE_2__ w_cursor; scalar_t__ w_virtcol; } ;



 scalar_t__ EOL_DOS ;
 int IOSIZE ;
 int * IObuff ;
 scalar_t__ MAXCOL ;
 int MAYBE ;
 int ML_EMPTY ;
 int MSG (char*) ;
 int NUL ;
 int OP_NOP ;
 int STRLEN (int *) ;
 int TRUE ;
 TYPE_2__ VIsual ;
 scalar_t__ VIsual_active ;
 int VIsual_mode ;
 char* _ (char*) ;
 int block_prep (TYPE_3__*,struct block_def*,int,int ) ;
 long bomb_size () ;
 int col_print (int *,int,int,int) ;
 TYPE_9__* curbuf ;
 TYPE_6__* curwin ;
 int * empty_option ;
 scalar_t__ get_fileformat (TYPE_9__*) ;
 int getvcols (TYPE_6__*,TYPE_2__*,TYPE_2__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ got_int ;
 long line_count_info (int *,long*,long*,long,int) ;
 int linetabsize (int *) ;
 scalar_t__ lt (TYPE_2__,TYPE_2__) ;
 int * ml_get (int) ;
 int * ml_get_curline () ;
 int msg (int *) ;
 char* no_lines_msg ;
 int * p_sbr ;
 char* p_sel ;
 int * p_shm ;
 int sprintf (char*,char*,long) ;
 int ui_breakcheck () ;
 int validate_virtcol () ;
 int vim_snprintf (char*,int,char*,...) ;
 int virtual_active () ;
 int virtual_op ;

void
cursor_pos_info()
{
    char_u *p;
    char_u buf1[50];
    char_u buf2[40];
    linenr_T lnum;
    long byte_count = 0;
    long byte_count_cursor = 0;
    long char_count = 0;
    long char_count_cursor = 0;
    long word_count = 0;
    long word_count_cursor = 0;
    int eol_size;
    long last_check = 100000L;
    if (curbuf->b_ml.ml_flags & ML_EMPTY)
    {
 MSG(_(no_lines_msg));
    }
    else
    {
 if (get_fileformat(curbuf) == EOL_DOS)
     eol_size = 2;
 else
     eol_size = 1;
 for (lnum = 1; lnum <= curbuf->b_ml.ml_line_count; ++lnum)
 {

     if (byte_count > last_check)
     {
  ui_breakcheck();
  if (got_int)
      return;
  last_check = byte_count + 100000L;
     }
     {

  if (lnum == curwin->w_cursor.lnum)
  {
      word_count_cursor += word_count;
      char_count_cursor += char_count;
      byte_count_cursor = byte_count +
   line_count_info(ml_get(lnum),
    &word_count_cursor, &char_count_cursor,
      (long)(curwin->w_cursor.col + 1), eol_size);
  }
     }

     byte_count += line_count_info(ml_get(lnum), &word_count,
      &char_count, (long)MAXCOL, eol_size);
 }


 if (!curbuf->b_p_eol && curbuf->b_p_bin)
     byte_count -= eol_size;
 {
     p = ml_get_curline();
     validate_virtcol();
     col_print(buf1, sizeof(buf1), (int)curwin->w_cursor.col + 1,
      (int)curwin->w_virtcol + 1);
     col_print(buf2, sizeof(buf2), (int)STRLEN(p), linetabsize(p));

     if (char_count_cursor == byte_count_cursor
      && char_count == byte_count)
  vim_snprintf((char *)IObuff, IOSIZE,
      _("Col %s of %s; Line %ld of %ld; Word %ld of %ld; Byte %ld of %ld"),
      (char *)buf1, (char *)buf2,
      (long)curwin->w_cursor.lnum,
      (long)curbuf->b_ml.ml_line_count,
      word_count_cursor, word_count,
      byte_count_cursor, byte_count);
     else
  vim_snprintf((char *)IObuff, IOSIZE,
      _("Col %s of %s; Line %ld of %ld; Word %ld of %ld; Char %ld of %ld; Byte %ld of %ld"),
      (char *)buf1, (char *)buf2,
      (long)curwin->w_cursor.lnum,
      (long)curbuf->b_ml.ml_line_count,
      word_count_cursor, word_count,
      char_count_cursor, char_count,
      byte_count_cursor, byte_count);
 }
 p = p_shm;
 p_shm = (char_u *)"";
 msg(IObuff);
 p_shm = p;
    }
}
