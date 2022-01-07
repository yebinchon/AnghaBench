
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {int buff; TYPE_1__ i; } ;
typedef int Opcode ;
typedef int CompileState ;


 int IAny ;


 int ITestSet ;
 int addcharset (int *,int const*) ;
 int addinstruction (int *,int const,int) ;
 int charsettype (int const*,int*) ;
 int codechar (int *,int,int) ;
 int cs_equal (int const*,int ) ;
 TYPE_2__ getinstr (int *,int) ;

__attribute__((used)) static void codecharset (CompileState *compst, const byte *cs, int tt) {
  int c = 0;
  Opcode op = charsettype(cs, &c);
  switch (op) {
    case 129: codechar(compst, c, tt); break;
    case 128: {
      if (tt >= 0 && getinstr(compst, tt).i.code == ITestSet &&
          cs_equal(cs, getinstr(compst, tt + 2).buff))
        addinstruction(compst, IAny, 0);
      else {
        addinstruction(compst, 128, 0);
        addcharset(compst, cs);
      }
      break;
    }
    default: addinstruction(compst, op, c); break;
  }
}
