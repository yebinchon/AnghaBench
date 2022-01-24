#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  e ;
struct TYPE_26__ {scalar_t__ p; scalar_t__ ep; } ;
struct TYPE_23__ {void* len; void* data; } ;
struct TYPE_25__ {long offset; long reg; TYPE_3__ loc; void* type; } ;
struct TYPE_24__ {long loc; long endloc; long iquantum; long dquantum; int nr; int nstack; TYPE_5__* r; TYPE_2__* cfa; TYPE_5__** stack; TYPE_5__* initr; } ;
struct TYPE_21__ {void* len; void* data; } ;
struct TYPE_22__ {long reg; long offset; TYPE_1__ loc; void* type; } ;
typedef  TYPE_4__ State ;
typedef  TYPE_5__ DwarfExpr ;
typedef  TYPE_6__ DwarfBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,TYPE_5__*,int) ; 
 void* RuleCfaOffset ; 
 void* RuleLocation ; 
 void* RuleRegOff ; 
 void* RuleRegister ; 
 void* RuleSame ; 
 void* RuleUndef ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,long) ; 
 void* FUNC2 (TYPE_6__*) ; 
 void* FUNC3 (TYPE_6__*) ; 
 long FUNC4 (TYPE_6__*) ; 
 long FUNC5 (TYPE_6__*) ; 
 long FUNC6 (TYPE_6__*) ; 
 long FUNC7 (TYPE_6__*) ; 
 void* FUNC8 (TYPE_6__*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_5__*,int) ; 
 scalar_t__ nil ; 
 scalar_t__ trace ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(DwarfBuf *b, State *s, int locstop)
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
		c = FUNC2(b);
		if(b->p == nil){
			FUNC12("ran out of instructions during cfa program");
			if(trace) FUNC12("%r\n");
			return -1;
		}
		if(trace) FUNC12("+ loc=0x%lux op 0x%ux ", s->loc, c);
		switch(c>>6){
		case 1:	/* advance location */
			arg1 = c&0x3F;
		advance:
			if(trace) FUNC12("loc += %ld\n", arg1*s->iquantum);
			s->loc += arg1 * s->iquantum;
			if(locstop)
				return 0;
			continue;

		case 2:	/* offset rule */
			arg1 = c&0x3F;
			arg2 = FUNC3(b);
		offset:
			if(trace) FUNC12("r%ld += %ld\n", arg1, arg2*s->dquantum);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->r[arg1].type = RuleCfaOffset;
			s->r[arg1].offset = arg2 * s->dquantum;
			continue;

		case 3:	/* restore initial setting */
			arg1 = c&0x3F;
		restore:
			if(trace) FUNC12("r%ld = init\n", arg1);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->r[arg1] = s->initr[arg1];
			continue;
		}

		switch(c){
		case 0:	/* nop */
			if(trace) FUNC12("nop\n");
			continue;

		case 0x01:	/* set location */
			s->loc = FUNC7(b);
			if(trace) FUNC12("loc = 0x%lux\n", s->loc);
			if(locstop)
				return 0;
			continue;

		case 0x02:	/* advance loc1 */
			arg1 = FUNC2(b);
			goto advance;

		case 0x03:	/* advance loc2 */
			arg1 = FUNC5(b);
			goto advance;

		case 0x04:	/* advance loc4 */
			arg1 = FUNC6(b);
			goto advance;

		case 0x05:	/* offset extended */
			arg1 = FUNC3(b);
			arg2 = FUNC3(b);
			goto offset;

		case 0x06:	/* restore extended */
			arg1 = FUNC3(b);
			goto restore;

		case 0x07:	/* undefined */
			arg1 = FUNC3(b);
			if(trace) FUNC12("r%ld = undef\n", arg1);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->r[arg1].type = RuleUndef;
			continue;

		case 0x08:	/* same value */
			arg1 = FUNC3(b);
			if(trace) FUNC12("r%ld = same\n", arg1);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->r[arg1].type = RuleSame;
			continue;

		case 0x09:	/* register */
			arg1 = FUNC3(b);
			arg2 = FUNC3(b);
			if(trace) FUNC12("r%ld = r%ld\n", arg1, arg2);
			if(FUNC1(s, arg1) < 0 || FUNC1(s, arg2) < 0)
				return -1;
			s->r[arg1].type = RuleRegister;
			s->r[arg1].reg = arg2;
			continue;

		case 0x0A:	/* remember state */
			e = FUNC10(s->nr*sizeof(e[0]));
			if(trace) FUNC12("push\n");
			if(e == nil)
				return -1;
			void *newstack = FUNC10(s->nstack*sizeof(s->stack[0]));
			FUNC0(newstack, *s->stack, s->nstack*sizeof(s->stack[0]));
			if (newstack) {
				FUNC9(*s->stack);
				s->stack = newstack;
			} else {
				FUNC9(e);
				return -1;
			}
			if(b->p == nil){
				FUNC9(e);
				return -1;
			}
			s->stack[s->nstack++] = e;
			FUNC11(e, s->r, s->nr*sizeof(e[0]));
			continue;

		case 0x0B:	/* restore state */
			if(trace) FUNC12("pop\n");
			if(s->nstack == 0){
				FUNC12("restore state underflow");
				return -1;
			}
			e = s->stack[s->nstack-1];
			FUNC11(s->r, e, s->nr*sizeof(e[0]));
			FUNC9(e);
			s->nstack--;
			continue;

		case 0x0C:	/* def cfa */
			arg1 = FUNC3(b);
			arg2 = FUNC3(b);
		defcfa:
			if(trace) FUNC12("cfa %ld(r%ld)\n", arg2, arg1);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->cfa->type = RuleRegOff;
			s->cfa->reg = arg1;
			s->cfa->offset = arg2;
			continue;

		case 0x0D:	/* def cfa register */
			arg1 = FUNC3(b);
			if(trace) FUNC12("cfa reg r%ld\n", arg1);
			if(s->cfa->type != RuleRegOff){
				FUNC12("change CFA register but CFA not in register+offset form");
				return -1;
			}
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->cfa->reg = arg1;
			continue;

		case 0x0E:	/* def cfa offset */
			arg1 = FUNC3(b);
		cfaoffset:
			if(trace) FUNC12("cfa off %ld\n", arg1);
			if(s->cfa->type != RuleRegOff){
				FUNC12("change CFA offset but CFA not in register+offset form");
				return -1;
			}
			s->cfa->offset = arg1;
			continue;

		case 0x0F:	/* def cfa expression */
			if(trace) FUNC12("cfa expr\n");
			s->cfa->type = RuleLocation;
			s->cfa->loc.len = FUNC3(b);
			s->cfa->loc.data = FUNC8(b, s->cfa->loc.len);
			continue;

		case 0x10:	/* def reg expression */
			arg1 = FUNC3(b);
			if(trace) FUNC12("reg expr r%ld\n", arg1);
			if(FUNC1(s, arg1) < 0)
				return -1;
			s->r[arg1].type = RuleLocation;
			s->r[arg1].loc.len = FUNC3(b);
			s->r[arg1].loc.data = FUNC8(b, s->r[arg1].loc.len);
			continue;

		case 0x11:	/* offset extended */
			arg1 = FUNC3(b);
			arg2 = FUNC4(b);
			goto offset;

		case 0x12:	/* cfa sf */
			arg1 = FUNC3(b);
			arg2 = FUNC4(b);
			goto defcfa;

		case 0x13:	/* cfa offset sf */
			arg1 = FUNC4(b);
			goto cfaoffset;

		default:	/* unknown */
			FUNC12("unknown opcode 0x%ux in cfa program", c);
			return -1;
		}
	}
	/* not reached */
}