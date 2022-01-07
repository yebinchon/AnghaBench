
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int n; } ;
struct TYPE_16__ {int tag; TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;
typedef int CompileState ;
typedef int Charset ;


 int IAny ;
 int IFail ;
 int addinstruction (int *,int ,int ) ;
 int assert (int ) ;
 int codeand (int *,int ,int) ;
 int codebehind (int *,TYPE_2__*) ;
 int codecall (int *,TYPE_2__*) ;
 int codecapture (int *,TYPE_2__*,int,int const*) ;
 int codechar (int *,int ,int) ;
 int codecharset (int *,int ,int) ;
 int codechoice (int *,int ,TYPE_2__*,int,int const*) ;
 int codegrammar (int *,TYPE_2__*) ;
 int codenot (int *,int ) ;
 int coderep (int *,int ,int,int const*) ;
 int coderuntime (int *,TYPE_2__*,int) ;
 int codeseq1 (int *,int ,TYPE_2__*,int,int const*) ;
 int sib1 (TYPE_2__*) ;
 TYPE_2__* sib2 (TYPE_2__*) ;
 int treebuffer (TYPE_2__*) ;

__attribute__((used)) static void codegen (CompileState *compst, TTree *tree, int opt, int tt,
                     const Charset *fl) {
 tailcall:
  switch (tree->tag) {
    case 137: codechar(compst, tree->u.n, tt); break;
    case 141: addinstruction(compst, IAny, 0); break;
    case 129: codecharset(compst, treebuffer(tree), tt); break;
    case 128: break;
    case 135: addinstruction(compst, IFail, 0); break;
    case 136: codechoice(compst, sib1(tree), sib2(tree), opt, fl); break;
    case 132: coderep(compst, sib1(tree), opt, fl); break;
    case 140: codebehind(compst, tree); break;
    case 133: codenot(compst, sib1(tree)); break;
    case 142: codeand(compst, sib1(tree), tt); break;
    case 138: codecapture(compst, tree, tt, fl); break;
    case 131: coderuntime(compst, tree, tt); break;
    case 134: codegrammar(compst, tree); break;
    case 139: codecall(compst, tree); break;
    case 130: {
      tt = codeseq1(compst, sib1(tree), sib2(tree), tt, fl);

      tree = sib2(tree); goto tailcall;
    }
    default: assert(0);
  }
}
