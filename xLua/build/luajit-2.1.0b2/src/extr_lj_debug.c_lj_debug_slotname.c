
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int GCproto ;
typedef scalar_t__ BCReg ;
typedef scalar_t__ BCOp ;
typedef int BCIns ;


 scalar_t__ BCMbase ;
 scalar_t__ BCMdst ;

 scalar_t__ BC_KNIL ;



 scalar_t__ LJ_FR2 ;
 scalar_t__ bc_a (int ) ;
 scalar_t__ bc_b (int ) ;
 int bc_c (int ) ;
 scalar_t__ bc_d (int ) ;
 int const bc_op (int ) ;
 scalar_t__ bcmode_a (scalar_t__) ;
 char* debug_varname (int *,int ,scalar_t__) ;
 int gco2str (int ) ;
 char* lj_debug_uvname (int *,scalar_t__) ;
 int const* proto_bc (int *) ;
 int proto_bcpos (int *,int const*) ;
 int proto_kgc (int *,int ) ;
 char* strdata (int ) ;

const char *lj_debug_slotname(GCproto *pt, const BCIns *ip, BCReg slot,
         const char **name)
{
  const char *lname;
restart:
  lname = debug_varname(pt, proto_bcpos(pt, ip), slot);
  if (lname != ((void*)0)) { *name = lname; return "local"; }
  while (--ip > proto_bc(pt)) {
    BCIns ins = *ip;
    BCOp op = bc_op(ins);
    BCReg ra = bc_a(ins);
    if (bcmode_a(op) == BCMbase) {
      if (slot >= ra && (op != BC_KNIL || slot <= bc_d(ins)))
 return ((void*)0);
    } else if (bcmode_a(op) == BCMdst && ra == slot) {
      switch (bc_op(ins)) {
      case 130:
 if (ra == slot) { slot = bc_d(ins); goto restart; }
 break;
      case 131:
 *name = strdata(gco2str(proto_kgc(pt, ~(ptrdiff_t)bc_d(ins))));
 return "global";
      case 129:
 *name = strdata(gco2str(proto_kgc(pt, ~(ptrdiff_t)bc_c(ins))));
 if (ip > proto_bc(pt)) {
   BCIns insp = ip[-1];
   if (bc_op(insp) == 130 && bc_a(insp) == ra+1+LJ_FR2 &&
       bc_d(insp) == bc_b(ins))
     return "method";
 }
 return "field";
      case 128:
 *name = lj_debug_uvname(pt, bc_d(ins));
 return "upvalue";
      default:
 return ((void*)0);
      }
    }
  }
  return ((void*)0);
}
