
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ linenr_T ;
typedef int char_u ;
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef TYPE_2__ buf_T ;
typedef int aco_save_T ;
typedef int VALUE ;


 int NOT_VALID ;
 scalar_t__ OK ;
 char* StringValuePtr (int ) ;
 int TRUE ;
 int aucmd_prepbuf (int *,TYPE_2__*) ;
 int aucmd_restbuf (int *) ;
 int changed () ;
 int ml_replace (scalar_t__,int *,int ) ;
 int rb_eIndexError ;
 int rb_raise (int ,char*,long) ;
 int syn_changed (scalar_t__) ;
 scalar_t__ u_savesub (scalar_t__) ;
 int update_curbuf (int ) ;

__attribute__((used)) static VALUE set_buffer_line(buf_T *buf, linenr_T n, VALUE str)
{
    char *line = StringValuePtr(str);
    aco_save_T aco;

    if (n > 0 && n <= buf->b_ml.ml_line_count && line != ((void*)0))
    {

 aucmd_prepbuf(&aco, buf);

 if (u_savesub(n) == OK) {
     ml_replace(n, (char_u *)line, TRUE);
     changed();



 }


 aucmd_restbuf(&aco);


 update_curbuf(NOT_VALID);
    }
    else
    {
 rb_raise(rb_eIndexError, "line number %ld out of range", (long)n);
    }
    return str;
}
