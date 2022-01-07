
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win_T ;
typedef int tabpage_T ;
typedef scalar_t__ linenr_T ;
typedef int char_u ;
typedef int buf_T ;
typedef int PyObject ;
typedef int PyInt ;


 scalar_t__ FAIL ;
 int FALSE ;
 int OK ;
 scalar_t__ PyBytes_Check (int *) ;
 int PyErr_BadArgument () ;
 int PyErr_Clear () ;
 scalar_t__ PyUnicode_Check (int *) ;
 int * Py_None ;
 int RAISE_DELETE_LINE_FAIL ;
 int RAISE_REPLACE_LINE_FAIL ;
 int RAISE_UNDO_FAIL ;
 char* StringToLine (int *) ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 int changed_bytes (scalar_t__,int ) ;
 int check_cursor_col () ;
 int * curbuf ;
 int deleted_lines_mark (scalar_t__,long) ;
 scalar_t__ ml_delete (scalar_t__,int ) ;
 scalar_t__ ml_replace (scalar_t__,int *,int ) ;
 int py_fix_cursor (scalar_t__,scalar_t__,scalar_t__) ;
 int restore_win_for_buf (int *,int *,int *) ;
 int switch_to_win_for_buf (int *,int **,int **,int **) ;
 scalar_t__ u_savedel (scalar_t__,long) ;
 scalar_t__ u_savesub (scalar_t__) ;
 int vim_free (char*) ;

__attribute__((used)) static int
SetBufferLine(buf_T *buf, PyInt n, PyObject *line, PyInt *len_change)
{
    buf_T *save_curbuf = ((void*)0);
    win_T *save_curwin = ((void*)0);
    tabpage_T *save_curtab = ((void*)0);







    if (line == Py_None || line == ((void*)0))
    {
 PyErr_Clear();
 switch_to_win_for_buf(buf, &save_curwin, &save_curtab, &save_curbuf);

 VimTryStart();

 if (u_savedel((linenr_T)n, 1L) == FAIL)
     RAISE_UNDO_FAIL;
 else if (ml_delete((linenr_T)n, FALSE) == FAIL)
     RAISE_DELETE_LINE_FAIL;
 else
 {
     if (buf == curbuf)
  py_fix_cursor((linenr_T)n, (linenr_T)n + 1, (linenr_T)-1);
     if (save_curbuf == ((void*)0))


  deleted_lines_mark((linenr_T)n, 1L);
 }

 restore_win_for_buf(save_curwin, save_curtab, save_curbuf);

 if (VimTryEnd())
     return FAIL;

 if (len_change)
     *len_change = -1;

 return OK;
    }
    else if (PyBytes_Check(line) || PyUnicode_Check(line))
    {
 char *save = StringToLine(line);

 if (save == ((void*)0))
     return FAIL;

 VimTryStart();


 PyErr_Clear();
 switch_to_win_for_buf(buf, &save_curwin, &save_curtab, &save_curbuf);

 if (u_savesub((linenr_T)n) == FAIL)
 {
     RAISE_UNDO_FAIL;
     vim_free(save);
 }
 else if (ml_replace((linenr_T)n, (char_u *)save, FALSE) == FAIL)
 {
     RAISE_REPLACE_LINE_FAIL;
     vim_free(save);
 }
 else
     changed_bytes((linenr_T)n, 0);

 restore_win_for_buf(save_curwin, save_curtab, save_curbuf);


 if (buf == curbuf)
     check_cursor_col();

 if (VimTryEnd())
     return FAIL;

 if (len_change)
     *len_change = 0;

 return OK;
    }
    else
    {
 PyErr_BadArgument();
 return FAIL;
    }
}
