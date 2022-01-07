
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_4__ {int lval; double dval; char* sval; TYPE_2__* ext; int tref; } ;
struct TYPE_5__ {int type; TYPE_1__ u; struct TYPE_5__* ref; struct TYPE_5__* ext2; } ;
typedef TYPE_2__ expr_t ;
typedef int FILE ;
 int find_identifier (char*,int const*,int*) ;
 int fprintf (int *,char*,...) ;
 int write_type_decl (int *,int ,int *) ;

void write_expr(FILE *h, const expr_t *e, int brackets,
                int toplevel, const char *toplevel_prefix,
                const type_t *cont_type, const char *local_var_prefix)
{
    switch (e->type)
    {
    case 130:
        break;
    case 140:
        fprintf(h, "%u", e->u.lval);
        break;
    case 153:
        fprintf(h, "0x%x", e->u.lval);
        break;
    case 157:
        fprintf(h, "%#.15g", e->u.dval);
        break;
    case 131:
        if (e->u.lval == 0)
            fprintf(h, "FALSE");
        else
            fprintf(h, "TRUE");
        break;
    case 152:
        if (toplevel && toplevel_prefix && cont_type)
        {
            int found_in_cont_type;
            find_identifier(e->u.sval, cont_type, &found_in_cont_type);
            if (found_in_cont_type)
            {
                fprintf(h, "%s%s", toplevel_prefix, e->u.sval);
                break;
            }
        }
        fprintf(h, "%s%s", local_var_prefix, e->u.sval);
        break;
    case 133:
        fprintf(h, "\"%s\"", e->u.sval);
        break;
    case 129:
        fprintf(h, "L\"%s\"", e->u.sval);
        break;
    case 160:
        fprintf(h, "'%s'", e->u.sval);
        break;
    case 147:
        fprintf(h, "!");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 141:
        fprintf(h, "~");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 138:
        fprintf(h, "+");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 142:
        fprintf(h, "-");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 164:
        fprintf(h, "&");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 137:
        fprintf(h, "*");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 161:
        fprintf(h, "(");
        write_type_decl(h, e->u.tref, ((void*)0));
        fprintf(h, ")");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        break;
    case 134:
        fprintf(h, "sizeof(");
        write_type_decl(h, e->u.tref, ((void*)0));
        fprintf(h, ")");
        break;
    case 136:
    case 135:
    case 144:
    case 143:
    case 158:
    case 165:
    case 132:
    case 163:
    case 139:
    case 146:
    case 148:
    case 128:
    case 156:
    case 151:
    case 155:
    case 150:
    case 154:
    case 149:
        if (brackets) fprintf(h, "(");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        switch (e->type)
        {
        case 136: fprintf(h, " << "); break;
        case 135: fprintf(h, " >> "); break;
        case 144: fprintf(h, " %% "); break;
        case 143: fprintf(h, " * "); break;
        case 158: fprintf(h, " / "); break;
        case 165: fprintf(h, " + "); break;
        case 132: fprintf(h, " - "); break;
        case 163: fprintf(h, " & "); break;
        case 139: fprintf(h, " | "); break;
        case 146: fprintf(h, " || "); break;
        case 148: fprintf(h, " && "); break;
        case 128: fprintf(h, " ^ "); break;
        case 156: fprintf(h, " == "); break;
        case 151: fprintf(h, " != "); break;
        case 155: fprintf(h, " > "); break;
        case 150: fprintf(h, " < "); break;
        case 154: fprintf(h, " >= "); break;
        case 149: fprintf(h, " <= "); break;
        default: break;
        }
        write_expr(h, e->u.ext, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        if (brackets) fprintf(h, ")");
        break;
    case 145:
        if (brackets) fprintf(h, "(");
        if (e->ref->type == 137)
        {
            write_expr(h, e->ref->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
            fprintf(h, "->");
        }
        else
        {
            write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
            fprintf(h, ".");
        }
        write_expr(h, e->u.ext, 1, 0, toplevel_prefix, cont_type, "");
        if (brackets) fprintf(h, ")");
        break;
    case 159:
        if (brackets) fprintf(h, "(");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        fprintf(h, " ? ");
        write_expr(h, e->u.ext, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        fprintf(h, " : ");
        write_expr(h, e->ext2, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        if (brackets) fprintf(h, ")");
        break;
    case 162:
        if (brackets) fprintf(h, "(");
        write_expr(h, e->ref, 1, toplevel, toplevel_prefix, cont_type, local_var_prefix);
        fprintf(h, "[");
        write_expr(h, e->u.ext, 1, 1, toplevel_prefix, cont_type, local_var_prefix);
        fprintf(h, "]");
        if (brackets) fprintf(h, ")");
        break;
    }
}
