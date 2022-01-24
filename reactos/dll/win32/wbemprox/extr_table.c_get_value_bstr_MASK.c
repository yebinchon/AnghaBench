#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct table {TYPE_1__* columns; } ;
typedef  char WCHAR ;
typedef  size_t UINT ;
struct TYPE_2__ {int type; } ;
typedef  char const* LONGLONG ;
typedef  scalar_t__ INT_PTR ;
typedef  char* BSTR ;

/* Variables and functions */
#define  CIM_BOOLEAN 136 
#define  CIM_DATETIME 135 
 int CIM_FLAG_ARRAY ; 
#define  CIM_SINT16 134 
#define  CIM_SINT32 133 
#define  CIM_SINT64 132 
#define  CIM_STRING 131 
#define  CIM_UINT16 130 
#define  CIM_UINT32 129 
#define  CIM_UINT64 128 
 int COL_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ S_OK ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (struct table const*,size_t,size_t,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 

BSTR FUNC7( const struct table *table, UINT row, UINT column )
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
        FUNC0("array to string conversion not handled\n");
        return NULL;
    }
    if (FUNC3( table, row, column, &val ) != S_OK) return NULL;

    switch (table->columns[column].type & COL_TYPE_MASK)
    {
    case CIM_BOOLEAN:
        if (val) return FUNC1( trueW );
        else return FUNC1( falseW );

    case CIM_DATETIME:
    case CIM_STRING:
        if (!val) return NULL;
        len = FUNC5( (const WCHAR *)(INT_PTR)val ) + 2;
        if (!(ret = FUNC2( NULL, len ))) return NULL;
        FUNC4( ret, fmt_strW, (const WCHAR *)(INT_PTR)val );
        return ret;

    case CIM_SINT16:
    case CIM_SINT32:
        FUNC4( number, fmt_signedW, val );
        return FUNC1( number );

    case CIM_UINT16:
    case CIM_UINT32:
        FUNC4( number, fmt_unsignedW, val );
        return FUNC1( number );

    case CIM_SINT64:
        FUNC6( number, fmt_signed64W, val );
        return FUNC1( number );

    case CIM_UINT64:
        FUNC6( number, fmt_unsigned64W, val );
        return FUNC1( number );

    default:
        FUNC0("unhandled column type %u\n", table->columns[column].type & COL_TYPE_MASK);
        break;
    }
    return NULL;
}