#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LONGLONG ;
typedef  int CIMTYPE ;

/* Variables and functions */
#define  CIM_SINT16 135 
#define  CIM_SINT32 134 
#define  CIM_SINT64 133 
#define  CIM_SINT8 132 
#define  CIM_UINT16 131 
#define  CIM_UINT32 130 
#define  CIM_UINT64 129 
#define  CIM_UINT8 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const WCHAR *FUNC3( WCHAR *buf, CIMTYPE type, LONGLONG val )
{
    static const WCHAR fmt_signedW[] = {'%','d',0};
    static const WCHAR fmt_unsignedW[] = {'%','u',0};
    static const WCHAR fmt_signed64W[] = {'%','I','6','4','d',0};
    static const WCHAR fmt_unsigned64W[] = {'%','I','6','4','u',0};

    switch (type)
    {
    case CIM_SINT8:
    case CIM_SINT16:
    case CIM_SINT32:
        FUNC1( buf, fmt_signedW, val );
        return buf;

    case CIM_UINT8:
    case CIM_UINT16:
    case CIM_UINT32:
        FUNC1( buf, fmt_unsignedW, val );
        return buf;

    case CIM_SINT64:
        FUNC2( buf, fmt_signed64W, val );
        return buf;

    case CIM_UINT64:
        FUNC2( buf, fmt_unsigned64W, val );
        return buf;

    default:
        FUNC0( "unhandled type %u\n", type );
        return NULL;
    }
}