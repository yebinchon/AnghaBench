
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ code; int aux; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
typedef int CompileState ;


 int IAny ;
 int IChar ;
 scalar_t__ ITestChar ;
 int addinstruction (int *,int ,int) ;
 TYPE_2__ getinstr (int *,int) ;

__attribute__((used)) static void codechar (CompileState *compst, int c, int tt) {
  if (tt >= 0 && getinstr(compst, tt).i.code == ITestChar &&
                 getinstr(compst, tt).i.aux == c)
    addinstruction(compst, IAny, 0);
  else
    addinstruction(compst, IChar, c);
}
