#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; char* string; double number; struct TYPE_9__* c; struct TYPE_9__* b; struct TYPE_9__* a; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
#define  AST_IDENTIFIER 192 
#define  EXP_ADD 191 
#define  EXP_ARRAY 190 
#define  EXP_ASS 189 
#define  EXP_ASS_ADD 188 
#define  EXP_ASS_BITAND 187 
#define  EXP_ASS_BITOR 186 
#define  EXP_ASS_BITXOR 185 
#define  EXP_ASS_DIV 184 
#define  EXP_ASS_MOD 183 
#define  EXP_ASS_MUL 182 
#define  EXP_ASS_SHL 181 
#define  EXP_ASS_SHR 180 
#define  EXP_ASS_SUB 179 
#define  EXP_ASS_USHR 178 
#define  EXP_BITAND 177 
#define  EXP_BITNOT 176 
#define  EXP_BITOR 175 
#define  EXP_BITXOR 174 
#define  EXP_CALL 173 
#define  EXP_COMMA 172 
#define  EXP_COND 171 
#define  EXP_DELETE 170 
#define  EXP_DIV 169 
#define  EXP_EQ 168 
#define  EXP_FALSE 167 
#define  EXP_FUN 166 
#define  EXP_GE 165 
#define  EXP_GT 164 
#define  EXP_IDENTIFIER 163 
#define  EXP_IN 162 
#define  EXP_INDEX 161 
#define  EXP_INSTANCEOF 160 
#define  EXP_LE 159 
#define  EXP_LOGAND 158 
#define  EXP_LOGNOT 157 
#define  EXP_LOGOR 156 
#define  EXP_LT 155 
#define  EXP_MEMBER 154 
#define  EXP_MOD 153 
#define  EXP_MUL 152 
#define  EXP_NE 151 
#define  EXP_NEG 150 
#define  EXP_NEW 149 
#define  EXP_NULL 148 
#define  EXP_NUMBER 147 
#define  EXP_OBJECT 146 
#define  EXP_POS 145 
#define  EXP_POSTDEC 144 
#define  EXP_POSTINC 143 
#define  EXP_PREDEC 142 
#define  EXP_PREINC 141 
#define  EXP_REGEXP 140 
#define  EXP_SHL 139 
#define  EXP_SHR 138 
#define  EXP_STRICTEQ 137 
#define  EXP_STRICTNE 136 
#define  EXP_STRING 135 
#define  EXP_SUB 134 
#define  EXP_THIS 133 
#define  EXP_TRUE 132 
#define  EXP_TYPEOF 131 
#define  EXP_UNDEF 130 
#define  EXP_USHR 129 
#define  EXP_VOID 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,double) ; 
 int /*<<< orphan*/  FUNC9 (char*,double) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(int d, int p, js_Ast *exp)
{
	int tp, paren;

	if (!exp) return;

	tp = FUNC7(exp->type);
	paren = 0;
	if (tp < p) {
		FUNC5('(');
		paren = 1;
	}
	p = tp;

	switch (exp->type) {
	case AST_IDENTIFIER: FUNC10(exp->string); break;
	case EXP_IDENTIFIER: FUNC10(exp->string); break;
	case EXP_NUMBER: FUNC9("%.9g", exp->number); break;
	case EXP_STRING: FUNC12(exp->string); break;
	case EXP_REGEXP: FUNC8(exp->string, exp->number); break;

	case EXP_UNDEF: break;
	case EXP_NULL: FUNC10("null"); break;
	case EXP_TRUE: FUNC10("true"); break;
	case EXP_FALSE: FUNC10("false"); break;
	case EXP_THIS: FUNC10("this"); break;

	case EXP_OBJECT: FUNC6(d, exp->a); break;
	case EXP_ARRAY: FUNC3(d, exp->a); break;

	case EXP_DELETE: FUNC13(d, p, exp, "delete ", ""); break;
	case EXP_VOID: FUNC13(d, p, exp, "void ", ""); break;
	case EXP_TYPEOF: FUNC13(d, p, exp, "typeof ", ""); break;
	case EXP_PREINC: FUNC13(d, p, exp, "++", ""); break;
	case EXP_PREDEC: FUNC13(d, p, exp, "--", ""); break;
	case EXP_POSTINC: FUNC13(d, p, exp, "", "++"); break;
	case EXP_POSTDEC: FUNC13(d, p, exp, "", "--"); break;
	case EXP_POS: FUNC13(d, p, exp, "+", ""); break;
	case EXP_NEG: FUNC13(d, p, exp, "-", ""); break;
	case EXP_BITNOT: FUNC13(d, p, exp, "~", ""); break;
	case EXP_LOGNOT: FUNC13(d, p, exp, "!", ""); break;

	case EXP_LOGOR: FUNC4(d, p, exp, "||"); break;
	case EXP_LOGAND: FUNC4(d, p, exp, "&&"); break;
	case EXP_BITOR: FUNC4(d, p, exp, "|"); break;
	case EXP_BITXOR: FUNC4(d, p, exp, "^"); break;
	case EXP_BITAND: FUNC4(d, p, exp, "&"); break;
	case EXP_EQ: FUNC4(d, p, exp, "=="); break;
	case EXP_NE: FUNC4(d, p, exp, "!="); break;
	case EXP_STRICTEQ: FUNC4(d, p, exp, "==="); break;
	case EXP_STRICTNE: FUNC4(d, p, exp, "!=="); break;
	case EXP_LT: FUNC4(d, p, exp, "<"); break;
	case EXP_GT: FUNC4(d, p, exp, ">"); break;
	case EXP_LE: FUNC4(d, p, exp, "<="); break;
	case EXP_GE: FUNC4(d, p, exp, ">="); break;
	case EXP_IN: FUNC4(d, p, exp, "in"); break;
	case EXP_SHL: FUNC4(d, p, exp, "<<"); break;
	case EXP_SHR: FUNC4(d, p, exp, ">>"); break;
	case EXP_USHR: FUNC4(d, p, exp, ">>>"); break;
	case EXP_ADD: FUNC4(d, p, exp, "+"); break;
	case EXP_SUB: FUNC4(d, p, exp, "-"); break;
	case EXP_MUL: FUNC4(d, p, exp, "*"); break;
	case EXP_DIV: FUNC4(d, p, exp, "/"); break;
	case EXP_MOD: FUNC4(d, p, exp, "%"); break;
	case EXP_ASS: FUNC4(d, p, exp, "="); break;
	case EXP_ASS_MUL: FUNC4(d, p, exp, "*="); break;
	case EXP_ASS_DIV: FUNC4(d, p, exp, "/="); break;
	case EXP_ASS_MOD: FUNC4(d, p, exp, "%="); break;
	case EXP_ASS_ADD: FUNC4(d, p, exp, "+="); break;
	case EXP_ASS_SUB: FUNC4(d, p, exp, "-="); break;
	case EXP_ASS_SHL: FUNC4(d, p, exp, "<<="); break;
	case EXP_ASS_SHR: FUNC4(d, p, exp, ">>="); break;
	case EXP_ASS_USHR: FUNC4(d, p, exp, ">>>="); break;
	case EXP_ASS_BITAND: FUNC4(d, p, exp, "&="); break;
	case EXP_ASS_BITXOR: FUNC4(d, p, exp, "^="); break;
	case EXP_ASS_BITOR: FUNC4(d, p, exp, "|="); break;

	case EXP_INSTANCEOF:
		FUNC15(d, p, exp->a);
		FUNC10(" instanceof ");
		FUNC15(d, p, exp->b);
		break;

	case EXP_COMMA:
		FUNC15(d, p, exp->a);
		FUNC5(','); FUNC14();
		FUNC15(d, p, exp->b);
		break;

	case EXP_COND:
		FUNC15(d, p, exp->a);
		FUNC14(); FUNC5('?'); FUNC14();
		FUNC15(d, p, exp->b);
		FUNC14(); FUNC5(':'); FUNC14();
		FUNC15(d, p, exp->c);
		break;

	case EXP_INDEX:
		FUNC15(d, p, exp->a);
		FUNC5('[');
		FUNC15(d, 0, exp->b);
		FUNC5(']');
		break;

	case EXP_MEMBER:
		FUNC15(d, p, exp->a);
		FUNC5('.');
		FUNC15(d, 0, exp->b);
		break;

	case EXP_CALL:
		FUNC15(d, p, exp->a);
		FUNC5('(');
		FUNC2(d, exp->b);
		FUNC5(')');
		break;

	case EXP_NEW:
		FUNC10("new ");
		FUNC15(d, p, exp->a);
		FUNC5('(');
		FUNC2(d, exp->b);
		FUNC5(')');
		break;

	case EXP_FUN:
		if (p == 0) FUNC5('(');
		FUNC10("function ");
		FUNC15(d, 0, exp->a);
		FUNC5('(');
		FUNC2(d, exp->b);
		FUNC5(')'); FUNC14(); FUNC5('{'); FUNC1();
		FUNC11(d, exp->c);
		FUNC0(d); FUNC5('}');
		if (p == 0) FUNC5(')');
		break;

	default:
		FUNC10("<UNKNOWN>");
		break;
	}

	if (paren) FUNC5(')');
}