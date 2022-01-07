
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {size_t n; int * str; } ;
struct TYPE_4__ {char member_0; char member_1; char member_2; int member_3; } ;
typedef int * LPCWSTR ;
typedef TYPE_2__ COND_input ;
 int lstrlenW (int const*) ;
 scalar_t__ strncmpW (int const*,int *,int) ;

__attribute__((used)) static int COND_GetOperator( COND_input *cond )
{
    static const struct {
        const WCHAR str[4];
        int id;
    } table[] = {
        { {'~','<','=',0}, 139 },
        { {'~','>','<',0}, 134 },
        { {'~','>','>',0}, 135 },
        { {'~','<','>',0}, 136 },
        { {'~','>','=',0}, 141 },
        { {'~','<','<',0}, 138 },
        { {'~','=',0}, 142 },
        { {'~','<',0}, 137 },
        { {'~','>',0}, 140 },
        { {'>','=',0}, 144 },
        { {'>','<',0}, 128 },
        { {'<','<',0}, 132 },
        { {'<','>',0}, 130 },
        { {'<','=',0}, 133 },
        { {'>','>',0}, 129 },
        { {'>',0}, 143 },
        { {'<',0}, 131 },
        { {0}, 0 }
    };
    LPCWSTR p = &cond->str[cond->n];
    int i = 0, len;

    while ( 1 )
    {
        len = lstrlenW( table[i].str );
        if ( !len || 0 == strncmpW( table[i].str, p, len ) )
            break;
        i++;
    }
    cond->n += len;
    return table[i].id;
}
