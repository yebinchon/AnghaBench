
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {TYPE_1__* columns; } ;
typedef char WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int type; } ;
typedef char const* LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef char* BSTR ;




 int CIM_FLAG_ARRAY ;







 int COL_TYPE_MASK ;
 int FIXME (char*,...) ;
 scalar_t__ S_OK ;
 char* SysAllocString (char const*) ;
 char* SysAllocStringLen (int *,size_t) ;
 scalar_t__ get_value (struct table const*,size_t,size_t,char const**) ;
 int sprintfW (char*,char const*,char const*) ;
 int strlenW (char const*) ;
 int wsprintfW (char*,char const*,char const*) ;

BSTR get_value_bstr( const struct table *table, UINT row, UINT column )
{
    static const WCHAR fmt_signedW[] = {'%','d',0};
    static const WCHAR fmt_unsignedW[] = {'%','u',0};
    static const WCHAR fmt_signed64W[] = {'%','I','6','4','d',0};
    static const WCHAR fmt_unsigned64W[] = {'%','I','6','4','u',0};
    static const WCHAR fmt_strW[] = {'\"','%','s','\"',0};
    static const WCHAR trueW[] = {'T','R','U','E',0};
    static const WCHAR falseW[] = {'F','A','L','S','E',0};
    LONGLONG val;
    BSTR ret;
    WCHAR number[22];
    UINT len;

    if (table->columns[column].type & CIM_FLAG_ARRAY)
    {
        FIXME("array to string conversion not handled\n");
        return ((void*)0);
    }
    if (get_value( table, row, column, &val ) != S_OK) return ((void*)0);

    switch (table->columns[column].type & COL_TYPE_MASK)
    {
    case 136:
        if (val) return SysAllocString( trueW );
        else return SysAllocString( falseW );

    case 135:
    case 131:
        if (!val) return ((void*)0);
        len = strlenW( (const WCHAR *)(INT_PTR)val ) + 2;
        if (!(ret = SysAllocStringLen( ((void*)0), len ))) return ((void*)0);
        sprintfW( ret, fmt_strW, (const WCHAR *)(INT_PTR)val );
        return ret;

    case 134:
    case 133:
        sprintfW( number, fmt_signedW, val );
        return SysAllocString( number );

    case 130:
    case 129:
        sprintfW( number, fmt_unsignedW, val );
        return SysAllocString( number );

    case 132:
        wsprintfW( number, fmt_signed64W, val );
        return SysAllocString( number );

    case 128:
        wsprintfW( number, fmt_unsigned64W, val );
        return SysAllocString( number );

    default:
        FIXME("unhandled column type %u\n", table->columns[column].type & COL_TYPE_MASK);
        break;
    }
    return ((void*)0);
}
