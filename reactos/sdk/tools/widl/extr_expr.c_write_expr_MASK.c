#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_t ;
struct TYPE_4__ {int lval; double dval; char* sval; TYPE_2__* ext; int /*<<< orphan*/  tref; } ;
struct TYPE_5__ {int type; TYPE_1__ u; struct TYPE_5__* ref; struct TYPE_5__* ext2; } ;
typedef  TYPE_2__ expr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EXPR_ADD 165 
#define  EXPR_ADDRESSOF 164 
#define  EXPR_AND 163 
#define  EXPR_ARRAY 162 
#define  EXPR_CAST 161 
#define  EXPR_CHARCONST 160 
#define  EXPR_COND 159 
#define  EXPR_DIV 158 
#define  EXPR_DOUBLE 157 
#define  EXPR_EQUALITY 156 
#define  EXPR_GTR 155 
#define  EXPR_GTREQL 154 
#define  EXPR_HEXNUM 153 
#define  EXPR_IDENTIFIER 152 
#define  EXPR_INEQUALITY 151 
#define  EXPR_LESS 150 
#define  EXPR_LESSEQL 149 
#define  EXPR_LOGAND 148 
#define  EXPR_LOGNOT 147 
#define  EXPR_LOGOR 146 
#define  EXPR_MEMBER 145 
#define  EXPR_MOD 144 
#define  EXPR_MUL 143 
#define  EXPR_NEG 142 
#define  EXPR_NOT 141 
#define  EXPR_NUM 140 
#define  EXPR_OR 139 
#define  EXPR_POS 138 
#define  EXPR_PPTR 137 
#define  EXPR_SHL 136 
#define  EXPR_SHR 135 
#define  EXPR_SIZEOF 134 
#define  EXPR_STRLIT 133 
#define  EXPR_SUB 132 
#define  EXPR_TRUEFALSE 131 
#define  EXPR_VOID 130 
#define  EXPR_WSTRLIT 129 
#define  EXPR_XOR 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(FILE *h, const expr_t *e, int brackets,
                int toplevel, const char *toplevel_prefix,
                const type_t *cont_type, const char *local_var_prefix)
{
    switch (e->type)
    {
    case EXPR_VOID:
        break;
    case EXPR_NUM:
        FUNC1(h, "%u", e->u.lval);
        break;
    case EXPR_HEXNUM:
        FUNC1(h, "0x%x", e->u.lval);
        break;
    case EXPR_DOUBLE:
        FUNC1(h, "%#.15g", e->u.dval);
        break;
    case EXPR_TRUEFALSE:
        if (e->u.lval == 0)
            FUNC1(h, "FALSE");
        else
            FUNC1(h, "TRUE");
        break;
    case EXPR_IDENTIFIER:
        if (toplevel && toplevel_prefix && cont_type)
        {
            int found_in_cont_type;
            FUNC0(e->u.sval, cont_type, &found_in_cont_type);
            if (found_in_cont_type)
            {
                FUNC1(h, "%s%s", toplevel_prefix, e->u.sval);
                break;
            }
        }
        FUNC1(h, "%s%s", local_var_prefix, e->u.sval);
        break;
    case EXPR_STRLIT:
        FUNC1(h, "\"%s\"", e->u.sval);
        break;
    case EXPR_WSTRLIT:
        FUNC1(h, "L\"%s\"", e->u.sval);
        break;
    case EXPR_CHARCONST:
        FUNC1(h, "'%s'", e->u.sval);
        break;
    case EXPR_LOGNOT:
        FUNC1(h, "!");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_NOT:
        FUNC1(h, "~");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_POS:
        FUNC1(h, "+");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_NEG:
        FUNC1(h, "-");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_ADDRESSOF:
        FUNC1(h, "&");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_PPTR:
        FUNC1(h, "*");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_CAST:
        FUNC1(h, "(");
        FUNC2(h, e->u.tref, NULL);
        FUNC1(h, ")");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case EXPR_SIZEOF:
        FUNC1(h, "sizeof(");
        FUNC2(h, e->u.tref, NULL);
        FUNC1(h, ")");
        break;
    case EXPR_SHL:
    case EXPR_SHR:
    case EXPR_MOD:
    case EXPR_MUL:
    case EXPR_DIV:
    case EXPR_ADD:
    case EXPR_SUB:
    case EXPR_AND:
    case EXPR_OR:
    case EXPR_LOGOR:
    case EXPR_LOGAND:
    case EXPR_XOR:
    case EXPR_EQUALITY:
    case EXPR_INEQUALITY:
    case EXPR_GTR:
    case EXPR_LESS:
    case EXPR_GTREQL:
    case EXPR_LESSEQL:
        if (brackets) FUNC1(h, "(");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        switch (e->type)
        {
        case EXPR_SHL:          FUNC1(h, " << "); break;
        case EXPR_SHR:          FUNC1(h, " >> "); break;
        case EXPR_MOD:          FUNC1(h, " %% "); break;
        case EXPR_MUL:          FUNC1(h, " * "); break;
        case EXPR_DIV:          FUNC1(h, " / "); break;
        case EXPR_ADD:          FUNC1(h, " + "); break;
        case EXPR_SUB:          FUNC1(h, " - "); break;
        case EXPR_AND:          FUNC1(h, " & "); break;
        case EXPR_OR:           FUNC1(h, " | "); break;
        case EXPR_LOGOR:        FUNC1(h, " || "); break;
        case EXPR_LOGAND:       FUNC1(h, " && "); break;
        case EXPR_XOR:          FUNC1(h, " ^ "); break;
        case EXPR_EQUALITY:     FUNC1(h, " == "); break;
        case EXPR_INEQUALITY:   FUNC1(h, " != "); break;
        case EXPR_GTR:          FUNC1(h, " > "); break;
        case EXPR_LESS:         FUNC1(h, " < "); break;
        case EXPR_GTREQL:       FUNC1(h, " >= "); break;
        case EXPR_LESSEQL:      FUNC1(h, " <= "); break;
        default: break;
        }
        FUNC3(h, e->u.ext, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        if (brackets) FUNC1(h, ")");
        break;
    case EXPR_MEMBER:
        if (brackets) FUNC1(h, "(");
        if (e->ref->type == EXPR_PPTR)
        {
            FUNC3(h, e->ref->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
            FUNC1(h, "->");
        }
        else
        {
            FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
            FUNC1(h, ".");
        }
        FUNC3(h, e->u.ext, 1, 0, toplevel_prefix, cont_type, "");
        if (brackets) FUNC1(h, ")");
        break;
    case EXPR_COND:
        if (brackets) FUNC1(h, "(");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        FUNC1(h, " ? ");
        FUNC3(h, e->u.ext, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        FUNC1(h, " : ");
        FUNC3(h, e->ext2, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        if (brackets) FUNC1(h, ")");
        break;
    case EXPR_ARRAY:
        if (brackets) FUNC1(h, "(");
        FUNC3(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        FUNC1(h, "[");
        FUNC3(h, e->u.ext, 1, 1, toplevel_prefix, cont_type, local_var_prefix);
        FUNC1(h, "]");
        if (brackets) FUNC1(h, ")");
        break;
    }
}