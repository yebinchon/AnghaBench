
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* v_string; } ;
struct TYPE_14__ {TYPE_1__ vval; int v_type; } ;
typedef TYPE_2__ typval_T ;
typedef int char_u ;
struct TYPE_16__ {TYPE_3__* ga_data; } ;
struct TYPE_15__ {int * ll_name; } ;


 int FALSE ;
 int FNE_CHECK_START ;
 int NUL ;
 int VAR_STRING ;
 int clear_lval (TYPE_3__*) ;
 int ga_append (TYPE_8__*,int ) ;
 int * get_lval (TYPE_3__*,int *,TYPE_3__*,int ,int ,int ,int ) ;
 int * redir_endp ;
 TYPE_8__ redir_ga ;
 TYPE_3__* redir_lval ;
 TYPE_3__* redir_varname ;
 int set_var_lval (TYPE_3__*,int *,TYPE_2__*,int ,int *) ;
 int vim_free (TYPE_3__*) ;

void
var_redir_stop()
{
    typval_T tv;

    if (redir_lval != ((void*)0))
    {

 if (redir_endp != ((void*)0))
 {
     ga_append(&redir_ga, NUL);
     tv.v_type = VAR_STRING;
     tv.vval.v_string = redir_ga.ga_data;


     redir_endp = get_lval(redir_varname, ((void*)0), redir_lval,
     FALSE, FALSE, FALSE, FNE_CHECK_START);
     if (redir_endp != ((void*)0) && redir_lval->ll_name != ((void*)0))
  set_var_lval(redir_lval, redir_endp, &tv, FALSE, (char_u *)".");
     clear_lval(redir_lval);
 }


 vim_free(redir_ga.ga_data);
 redir_ga.ga_data = ((void*)0);

 vim_free(redir_lval);
 redir_lval = ((void*)0);
    }
    vim_free(redir_varname);
    redir_varname = ((void*)0);
}
