
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int L; } ;
typedef TYPE_2__ jit_State ;
typedef int cTValue ;
struct TYPE_19__ {scalar_t__ top; } ;
struct TYPE_15__ {scalar_t__ id; } ;
struct TYPE_18__ {int mode; TYPE_1__ val; TYPE_8__* cts; int * param; void* p; void* srcname; int L; } ;
struct TYPE_17__ {scalar_t__ ctypeid; } ;
typedef int TRef ;
typedef int GCstr ;
typedef TYPE_3__ GCcdata ;
typedef scalar_t__ CTypeID ;
typedef TYPE_4__ CPState ;


 int CPARSE_MODE_ABSTRACT ;
 int CPARSE_MODE_NOIMPLICIT ;
 scalar_t__ CTID_CTYPEID ;
 int IRTG (int ,int ) ;
 int IRT_STR ;
 int IR_EQ ;
 int J2G (TYPE_2__*) ;
 int LJ_TRERR_BADTYPE ;
 TYPE_3__* argv2cdata (TYPE_2__*,int ,int *) ;
 scalar_t__ crec_constructor (TYPE_2__*,TYPE_3__*,int ) ;
 TYPE_8__* ctype_ctsG (int ) ;
 int emitir (int ,int ,int ) ;
 scalar_t__ lj_cparse (TYPE_4__*) ;
 int lj_ir_kstr (TYPE_2__*,int *) ;
 int lj_trace_err (TYPE_2__*,int ) ;
 int * strV (int *) ;
 void* strdata (int *) ;
 scalar_t__ tref_isstr (int ) ;

__attribute__((used)) static CTypeID argv2ctype(jit_State *J, TRef tr, cTValue *o)
{
  if (tref_isstr(tr)) {
    GCstr *s = strV(o);
    CPState cp;
    CTypeID oldtop;

    emitir(IRTG(IR_EQ, IRT_STR), tr, lj_ir_kstr(J, s));
    cp.L = J->L;
    cp.cts = ctype_ctsG(J2G(J));
    oldtop = cp.cts->top;
    cp.srcname = strdata(s);
    cp.p = strdata(s);
    cp.param = ((void*)0);
    cp.mode = CPARSE_MODE_ABSTRACT|CPARSE_MODE_NOIMPLICIT;
    if (lj_cparse(&cp) || cp.cts->top > oldtop)
      lj_trace_err(J, LJ_TRERR_BADTYPE);
    return cp.val.id;
  } else {
    GCcdata *cd = argv2cdata(J, tr, o);
    return cd->ctypeid == CTID_CTYPEID ? crec_constructor(J, cd, tr) :
     cd->ctypeid;
  }
}
