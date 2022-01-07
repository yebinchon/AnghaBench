
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* l; void* f; int * str; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;


 int FIXME (char*,int) ;
 void* tomUndefined ;

__attribute__((used)) static inline void init_textfont_prop_value(enum textfont_prop_id propid, textfont_prop_val *v)
{
    switch (propid)
    {
    case 151:
    case 150:
    case 149:
    case 148:
    case 147:
    case 145:
    case 144:
    case 146:
    case 143:
    case 142:
    case 141:
    case 139:
    case 137:
    case 136:
    case 134:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
        v->l = tomUndefined;
        return;
    case 140:
        v->str = ((void*)0);
        return;
    case 138:
    case 135:
    case 133:
        v->f = tomUndefined;
        return;
    default:
        FIXME("unhandled font property %d\n", propid);
        v->l = tomUndefined;
        return;
    }
}
