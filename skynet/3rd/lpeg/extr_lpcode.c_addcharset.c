
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int * buff; } ;
typedef int CompileState ;


 scalar_t__ CHARSETINSTSIZE ;
 int gethere (int *) ;
 TYPE_1__ getinstr (int *,int) ;
 size_t j ;
 int loopset (size_t,int ) ;
 int nextinstruction (int *) ;

__attribute__((used)) static void addcharset (CompileState *compst, const byte *cs) {
  int p = gethere(compst);
  int i;
  for (i = 0; i < (int)CHARSETINSTSIZE - 1; i++)
    nextinstruction(compst);

  loopset(j, getinstr(compst, p).buff[j] = cs[j]);
}
