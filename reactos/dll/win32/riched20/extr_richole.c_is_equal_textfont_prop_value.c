
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; int str; int l; } ;
typedef TYPE_1__ textfont_prop_val ;
typedef enum textfont_prop_id { ____Placeholder_textfont_prop_id } textfont_prop_id ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int) ;
 int strcmpW (int ,int ) ;

__attribute__((used)) static inline BOOL is_equal_textfont_prop_value(enum textfont_prop_id propid, textfont_prop_val *left,
    textfont_prop_val *right)
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
        return left->l == right->l;
    case 140:
        return !strcmpW(left->str, right->str);
    case 138:
    case 135:
    case 133:
       return left->f == right->f;
    default:
        FIXME("unhandled font property %d\n", propid);
        return FALSE;
    }
}
