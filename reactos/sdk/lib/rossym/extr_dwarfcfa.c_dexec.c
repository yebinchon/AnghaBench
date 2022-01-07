
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int e ;
struct TYPE_26__ {scalar_t__ p; scalar_t__ ep; } ;
struct TYPE_23__ {void* len; void* data; } ;
struct TYPE_25__ {long offset; long reg; TYPE_3__ loc; void* type; } ;
struct TYPE_24__ {long loc; long endloc; long iquantum; long dquantum; int nr; int nstack; TYPE_5__* r; TYPE_2__* cfa; TYPE_5__** stack; TYPE_5__* initr; } ;
struct TYPE_21__ {void* len; void* data; } ;
struct TYPE_22__ {long reg; long offset; TYPE_1__ loc; void* type; } ;
typedef TYPE_4__ State ;
typedef TYPE_5__ DwarfExpr ;
typedef TYPE_6__ DwarfBuf ;


 int RtlMoveMemory (void*,TYPE_5__*,int) ;
 void* RuleCfaOffset ;
 void* RuleLocation ;
 void* RuleRegOff ;
 void* RuleRegister ;
 void* RuleSame ;
 void* RuleUndef ;
 int checkreg (TYPE_4__*,long) ;
 void* dwarfget1 (TYPE_6__*) ;
 void* dwarfget128 (TYPE_6__*) ;
 long dwarfget128s (TYPE_6__*) ;
 long dwarfget2 (TYPE_6__*) ;
 long dwarfget4 (TYPE_6__*) ;
 long dwarfgetaddr (TYPE_6__*) ;
 void* dwarfgetnref (TYPE_6__*,void*) ;
 int free (TYPE_5__*) ;
 void* malloc (int) ;
 int memmove (TYPE_5__*,TYPE_5__*,int) ;
 scalar_t__ nil ;
 scalar_t__ trace ;
 int werrstr (char*,...) ;

__attribute__((used)) static int
dexec(DwarfBuf *b, State *s, int locstop)
{
 int c;
 long arg1, arg2;
 DwarfExpr *e;

 for(;;){
  if(b->p == b->ep){
   if(s->initr)
    s->loc = s->endloc;
   return 0;
  }
  c = dwarfget1(b);
  if(b->p == nil){
   werrstr("ran out of instructions during cfa program");
   if(trace) werrstr("%r\n");
   return -1;
  }
  if(trace) werrstr("+ loc=0x%lux op 0x%ux ", s->loc, c);
  switch(c>>6){
  case 1:
   arg1 = c&0x3F;
  advance:
   if(trace) werrstr("loc += %ld\n", arg1*s->iquantum);
   s->loc += arg1 * s->iquantum;
   if(locstop)
    return 0;
   continue;

  case 2:
   arg1 = c&0x3F;
   arg2 = dwarfget128(b);
  offset:
   if(trace) werrstr("r%ld += %ld\n", arg1, arg2*s->dquantum);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->r[arg1].type = RuleCfaOffset;
   s->r[arg1].offset = arg2 * s->dquantum;
   continue;

  case 3:
   arg1 = c&0x3F;
  restore:
   if(trace) werrstr("r%ld = init\n", arg1);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->r[arg1] = s->initr[arg1];
   continue;
  }

  switch(c){
  case 0:
   if(trace) werrstr("nop\n");
   continue;

  case 0x01:
   s->loc = dwarfgetaddr(b);
   if(trace) werrstr("loc = 0x%lux\n", s->loc);
   if(locstop)
    return 0;
   continue;

  case 0x02:
   arg1 = dwarfget1(b);
   goto advance;

  case 0x03:
   arg1 = dwarfget2(b);
   goto advance;

  case 0x04:
   arg1 = dwarfget4(b);
   goto advance;

  case 0x05:
   arg1 = dwarfget128(b);
   arg2 = dwarfget128(b);
   goto offset;

  case 0x06:
   arg1 = dwarfget128(b);
   goto restore;

  case 0x07:
   arg1 = dwarfget128(b);
   if(trace) werrstr("r%ld = undef\n", arg1);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->r[arg1].type = RuleUndef;
   continue;

  case 0x08:
   arg1 = dwarfget128(b);
   if(trace) werrstr("r%ld = same\n", arg1);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->r[arg1].type = RuleSame;
   continue;

  case 0x09:
   arg1 = dwarfget128(b);
   arg2 = dwarfget128(b);
   if(trace) werrstr("r%ld = r%ld\n", arg1, arg2);
   if(checkreg(s, arg1) < 0 || checkreg(s, arg2) < 0)
    return -1;
   s->r[arg1].type = RuleRegister;
   s->r[arg1].reg = arg2;
   continue;

  case 0x0A:
   e = malloc(s->nr*sizeof(e[0]));
   if(trace) werrstr("push\n");
   if(e == nil)
    return -1;
   void *newstack = malloc(s->nstack*sizeof(s->stack[0]));
   RtlMoveMemory(newstack, s->stack, s->nstack*sizeof(s->stack[0]));
   if (newstack) {
    free(s->stack);
    s->stack = newstack;
   } else {
    free(e);
    return -1;
   }
   if(b->p == nil){
    free(e);
    return -1;
   }
   s->stack[s->nstack++] = e;
   memmove(e, s->r, s->nr*sizeof(e[0]));
   continue;

  case 0x0B:
   if(trace) werrstr("pop\n");
   if(s->nstack == 0){
    werrstr("restore state underflow");
    return -1;
   }
   e = s->stack[s->nstack-1];
   memmove(s->r, e, s->nr*sizeof(e[0]));
   free(e);
   s->nstack--;
   continue;

  case 0x0C:
   arg1 = dwarfget128(b);
   arg2 = dwarfget128(b);
  defcfa:
   if(trace) werrstr("cfa %ld(r%ld)\n", arg2, arg1);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->cfa->type = RuleRegOff;
   s->cfa->reg = arg1;
   s->cfa->offset = arg2;
   continue;

  case 0x0D:
   arg1 = dwarfget128(b);
   if(trace) werrstr("cfa reg r%ld\n", arg1);
   if(s->cfa->type != RuleRegOff){
    werrstr("change CFA register but CFA not in register+offset form");
    return -1;
   }
   if(checkreg(s, arg1) < 0)
    return -1;
   s->cfa->reg = arg1;
   continue;

  case 0x0E:
   arg1 = dwarfget128(b);
  cfaoffset:
   if(trace) werrstr("cfa off %ld\n", arg1);
   if(s->cfa->type != RuleRegOff){
    werrstr("change CFA offset but CFA not in register+offset form");
    return -1;
   }
   s->cfa->offset = arg1;
   continue;

  case 0x0F:
   if(trace) werrstr("cfa expr\n");
   s->cfa->type = RuleLocation;
   s->cfa->loc.len = dwarfget128(b);
   s->cfa->loc.data = dwarfgetnref(b, s->cfa->loc.len);
   continue;

  case 0x10:
   arg1 = dwarfget128(b);
   if(trace) werrstr("reg expr r%ld\n", arg1);
   if(checkreg(s, arg1) < 0)
    return -1;
   s->r[arg1].type = RuleLocation;
   s->r[arg1].loc.len = dwarfget128(b);
   s->r[arg1].loc.data = dwarfgetnref(b, s->r[arg1].loc.len);
   continue;

  case 0x11:
   arg1 = dwarfget128(b);
   arg2 = dwarfget128s(b);
   goto offset;

  case 0x12:
   arg1 = dwarfget128(b);
   arg2 = dwarfget128s(b);
   goto defcfa;

  case 0x13:
   arg1 = dwarfget128s(b);
   goto cfaoffset;

  default:
   werrstr("unknown opcode 0x%ux in cfa program", c);
   return -1;
  }
 }

}
