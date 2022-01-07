
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * excleanup; int exclass; } ;


 int LJ_UEXCLASS_MAKE (int) ;
 int _Unwind_RaiseException (TYPE_1__*) ;
 TYPE_1__ static_uex ;

__attribute__((used)) static void err_raise_ext(int errcode)
{
  static_uex.exclass = LJ_UEXCLASS_MAKE(errcode);
  static_uex.excleanup = ((void*)0);
  _Unwind_RaiseException(&static_uex);
}
