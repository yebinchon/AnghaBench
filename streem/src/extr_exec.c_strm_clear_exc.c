
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * exc; } ;
typedef TYPE_1__ strm_stream ;


 int free (int *) ;

__attribute__((used)) static void
strm_clear_exc(strm_stream* strm)
{
  if (strm->exc) {
    free(strm->exc);
  }
  strm->exc = ((void*)0);
}
