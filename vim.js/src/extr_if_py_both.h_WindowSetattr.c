
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {long lnum; long col; scalar_t__ coladd; } ;
struct TYPE_13__ {TYPE_3__ w_cursor; TYPE_2__* w_buffer; } ;
typedef TYPE_4__ win_T ;
struct TYPE_14__ {TYPE_4__* win; } ;
typedef TYPE_5__ WindowObject ;
struct TYPE_10__ {long ml_line_count; } ;
struct TYPE_11__ {TYPE_1__ b_ml; } ;
typedef int PyObject ;


 scalar_t__ CheckWindow (TYPE_5__*) ;
 int NUMBER_INT ;
 int NUMBER_UNSIGNED ;
 int N_ (char*) ;
 scalar_t__ NumberToLong (int *,long*,int) ;
 int PyArg_Parse (int *,char*,long*,long*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyErr_SET_VIM (int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_TypeError ;
 int TRUE ;
 int VALID ;
 scalar_t__ VimCheckInterrupt () ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 int check_cursor_col_win (TYPE_4__*) ;
 TYPE_4__* curwin ;
 int need_mouse_correct ;
 scalar_t__ strcmp (char*,char*) ;
 int update_screen (int ) ;
 int win_setheight (int) ;
 int win_setwidth (int) ;

__attribute__((used)) static int
WindowSetattr(WindowObject *self, char *name, PyObject *valObject)
{
    if (CheckWindow(self))
 return -1;

    if (strcmp(name, "buffer") == 0)
    {
 PyErr_SET_STRING(PyExc_TypeError, N_("readonly attribute: buffer"));
 return -1;
    }
    else if (strcmp(name, "cursor") == 0)
    {
 long lnum;
 long col;

 if (!PyArg_Parse(valObject, "(ll)", &lnum, &col))
     return -1;

 if (lnum <= 0 || lnum > self->win->w_buffer->b_ml.ml_line_count)
 {
     PyErr_SET_VIM(N_("cursor position outside buffer"));
     return -1;
 }


 if (VimCheckInterrupt())
     return -1;

 self->win->w_cursor.lnum = lnum;
 self->win->w_cursor.col = col;




 check_cursor_col_win(self->win);

 update_screen(VALID);
 return 0;
    }
    else if (strcmp(name, "height") == 0)
    {
 long height;
 win_T *savewin;

 if (NumberToLong(valObject, &height, NUMBER_INT|NUMBER_UNSIGNED))
     return -1;




 savewin = curwin;
 curwin = self->win;

 VimTryStart();
 win_setheight((int) height);
 curwin = savewin;
 if (VimTryEnd())
     return -1;

 return 0;
    }
    else
    {
 PyErr_SetString(PyExc_AttributeError, name);
 return -1;
    }
}
