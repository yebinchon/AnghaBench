
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_6__ {TYPE_2__* exc; } ;
typedef TYPE_1__ strm_stream ;
struct TYPE_7__ {scalar_t__ type; char* fname; int lineno; int arg; } ;
typedef TYPE_2__ node_error ;


 scalar_t__ NODE_ERROR_SKIP ;
 int exec_cputs (TYPE_1__*,int ,int,int *,int *) ;
 int fprintf (int ,char*,char*,int) ;
 int stderr ;
 int strm_clear_exc (TYPE_1__*) ;

void
strm_eprint(strm_stream* strm)
{
  strm_value v;
  node_error* exc = strm->exc;

  if (!exc) return;
  if (exc->type == NODE_ERROR_SKIP) return;
  if (exc->fname) {
    fprintf(stderr, "%s:%d:", exc->fname, exc->lineno);
  }
  exec_cputs(strm, stderr, 1, &exc->arg, &v);

  strm_clear_exc(strm);
}
