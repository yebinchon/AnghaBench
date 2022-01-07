
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lval; int dval; int tref; TYPE_2__* ext; int sval; } ;
struct TYPE_6__ {int type; TYPE_1__ u; struct TYPE_6__* ref; struct TYPE_6__* ext2; } ;
typedef TYPE_2__ expr_t ;
 int compare_type (int ,int ) ;
 int strcmp (int ,int ) ;

int compare_expr(const expr_t *a, const expr_t *b)
{
    int ret;

    if (a->type != b->type)
        return a->type - b->type;

    switch (a->type)
    {
        case 140:
        case 153:
        case 131:
            return a->u.lval - b->u.lval;
        case 157:
            return a->u.dval - b->u.dval;
        case 152:
        case 133:
        case 129:
        case 160:
            return strcmp(a->u.sval, b->u.sval);
        case 159:
            ret = compare_expr(a->ref, b->ref);
            if (ret != 0)
                return ret;
            ret = compare_expr(a->u.ext, b->u.ext);
            if (ret != 0)
                return ret;
            return compare_expr(a->ext2, b->ext2);
        case 139:
        case 163:
        case 165:
        case 132:
        case 144:
        case 143:
        case 158:
        case 136:
        case 135:
        case 145:
        case 162:
        case 146:
        case 148:
        case 128:
        case 156:
        case 151:
        case 155:
        case 150:
        case 154:
        case 149:
            ret = compare_expr(a->ref, b->ref);
            if (ret != 0)
                return ret;
            return compare_expr(a->u.ext, b->u.ext);
        case 161:
            ret = compare_type(a->u.tref, b->u.tref);
            if (ret != 0)
                return ret;

        case 141:
        case 142:
        case 137:
        case 164:
        case 147:
        case 138:
            return compare_expr(a->ref, b->ref);
        case 134:
            return compare_type(a->u.tref, b->u.tref);
        case 130:
            return 0;
    }
    return -1;
}
