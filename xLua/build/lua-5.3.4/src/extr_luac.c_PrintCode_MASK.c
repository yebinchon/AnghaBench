#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sizecode; int /*<<< orphan*/ * p; scalar_t__* code; } ;
typedef  TYPE_1__ Proto ;
typedef  size_t OpCode ;
typedef  scalar_t__ Instruction ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
#define  OP_ADD 160 
#define  OP_BAND 159 
#define  OP_BOR 158 
#define  OP_BXOR 157 
#define  OP_CLOSURE 156 
#define  OP_DIV 155 
#define  OP_EQ 154 
#define  OP_EXTRAARG 153 
#define  OP_FORLOOP 152 
#define  OP_FORPREP 151 
#define  OP_GETTABLE 150 
#define  OP_GETTABUP 149 
#define  OP_GETUPVAL 148 
#define  OP_IDIV 147 
#define  OP_JMP 146 
#define  OP_LE 145 
#define  OP_LOADK 144 
#define  OP_LT 143 
#define  OP_MUL 142 
#define  OP_POW 141 
#define  OP_SELF 140 
#define  OP_SETLIST 139 
#define  OP_SETTABLE 138 
#define  OP_SETTABUP 137 
#define  OP_SETUPVAL 136 
#define  OP_SHL 135 
#define  OP_SHR 134 
#define  OP_SUB 133 
#define  OP_TFORLOOP 132 
 int /*<<< orphan*/  OpArgK ; 
 int /*<<< orphan*/  OpArgN ; 
 int /*<<< orphan*/  OpArgU ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,int) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (size_t) ; 
 int FUNC15 (size_t) ; 
 int FUNC16 (TYPE_1__ const*,int) ; 
#define  iABC 131 
#define  iABx 130 
#define  iAsBx 129 
#define  iAx 128 
 char** luaP_opnames ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void FUNC18(const Proto* f)
{
 const Instruction* code=f->code;
 int pc,n=f->sizecode;
 for (pc=0; pc<n; pc++)
 {
  Instruction i=code[pc];
  OpCode o=FUNC6(i);
  int a=FUNC0(i);
  int b=FUNC2(i);
  int c=FUNC4(i);
  int ax=FUNC1(i);
  int bx=FUNC3(i);
  int sbx=FUNC5(i);
  int line=FUNC16(f,pc);
  FUNC17("\t%d\t",pc+1);
  if (line>0) FUNC17("[%d]\t",line); else FUNC17("[-]\t");
  FUNC17("%-9s\t",luaP_opnames[o]);
  switch (FUNC15(o))
  {
   case iABC:
    FUNC17("%d",a);
    if (FUNC13(o)!=OpArgN) FUNC17(" %d",FUNC8(b) ? (FUNC9(FUNC7(b))) : b);
    if (FUNC14(o)!=OpArgN) FUNC17(" %d",FUNC8(c) ? (FUNC9(FUNC7(c))) : c);
    break;
   case iABx:
    FUNC17("%d",a);
    if (FUNC13(o)==OpArgK) FUNC17(" %d",FUNC9(bx));
    if (FUNC13(o)==OpArgU) FUNC17(" %d",bx);
    break;
   case iAsBx:
    FUNC17("%d %d",a,sbx);
    break;
   case iAx:
    FUNC17("%d",FUNC9(ax));
    break;
  }
  switch (o)
  {
   case OP_LOADK:
    FUNC17("\t; "); FUNC10(f,bx);
    break;
   case OP_GETUPVAL:
   case OP_SETUPVAL:
    FUNC17("\t; %s",FUNC11(b));
    break;
   case OP_GETTABUP:
    FUNC17("\t; %s",FUNC11(b));
    if (FUNC8(c)) { FUNC17(" "); FUNC10(f,FUNC7(c)); }
    break;
   case OP_SETTABUP:
    FUNC17("\t; %s",FUNC11(a));
    if (FUNC8(b)) { FUNC17(" "); FUNC10(f,FUNC7(b)); }
    if (FUNC8(c)) { FUNC17(" "); FUNC10(f,FUNC7(c)); }
    break;
   case OP_GETTABLE:
   case OP_SELF:
    if (FUNC8(c)) { FUNC17("\t; "); FUNC10(f,FUNC7(c)); }
    break;
   case OP_SETTABLE:
   case OP_ADD:
   case OP_SUB:
   case OP_MUL:
   case OP_POW:
   case OP_DIV:
   case OP_IDIV:
   case OP_BAND:
   case OP_BOR:
   case OP_BXOR:
   case OP_SHL:
   case OP_SHR:
   case OP_EQ:
   case OP_LT:
   case OP_LE:
    if (FUNC8(b) || FUNC8(c))
    {
     FUNC17("\t; ");
     if (FUNC8(b)) FUNC10(f,FUNC7(b)); else FUNC17("-");
     FUNC17(" ");
     if (FUNC8(c)) FUNC10(f,FUNC7(c)); else FUNC17("-");
    }
    break;
   case OP_JMP:
   case OP_FORLOOP:
   case OP_FORPREP:
   case OP_TFORLOOP:
    FUNC17("\t; to %d",sbx+pc+2);
    break;
   case OP_CLOSURE:
    FUNC17("\t; %p",FUNC12(f->p[bx]));
    break;
   case OP_SETLIST:
    if (c==0) FUNC17("\t; %d",(int)code[++pc]); else FUNC17("\t; %d",c);
    break;
   case OP_EXTRAARG:
    FUNC17("\t; "); FUNC10(f,ax);
    break;
   default:
    break;
  }
  FUNC17("\n");
 }
}