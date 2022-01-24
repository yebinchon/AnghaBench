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
typedef  int /*<<< orphan*/  var_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned short IsBasetype ; 
 unsigned short IsByValue ; 
 unsigned short IsIn ; 
 unsigned short IsOut ; 
 unsigned short IsPipe ; 
 unsigned short IsReturn ; 
 unsigned short IsSimpleRef ; 
 unsigned short MustFree ; 
 unsigned short MustSize ; 
 unsigned char FUNC0 (int /*<<< orphan*/  const*,int,unsigned short*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pointer_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 unsigned int FUNC6 (unsigned char) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static unsigned int FUNC8(FILE *file, int indent, const var_t *var,
                                                    int is_return, unsigned int *stack_offset)
{
    char buffer[128];
    unsigned int stack_size, typestring_offset;
    unsigned short flags;
    unsigned char fc = FUNC0( var, is_return, &flags, &stack_size, &typestring_offset );

    FUNC5( buffer, "/* flags:" );
    if (flags & MustSize) FUNC4( buffer, " must size," );
    if (flags & MustFree) FUNC4( buffer, " must free," );
    if (flags & IsPipe) FUNC4( buffer, " pipe," );
    if (flags & IsIn) FUNC4( buffer, " in," );
    if (flags & IsOut) FUNC4( buffer, " out," );
    if (flags & IsReturn) FUNC4( buffer, " return," );
    if (flags & IsBasetype) FUNC4( buffer, " base type," );
    if (flags & IsByValue) FUNC4( buffer, " by value," );
    if (flags & IsSimpleRef) FUNC4( buffer, " simple ref," );
    if (flags >> 13) FUNC3( buffer + FUNC7(buffer), " srv size=%u,", (flags >> 13) * 8 );
    FUNC5( buffer + FUNC7( buffer ) - 1, " */" );
    FUNC2( file, indent, "NdrFcShort(0x%hx),\t%s\n", flags, buffer );
    FUNC2( file, indent, "NdrFcShort(0x%x),	/* stack offset = %u */\n",
                *stack_offset, *stack_offset );
    if (flags & IsBasetype)
    {
        FUNC2( file, indent, "0x%02x,	/* %s */\n", fc, FUNC6(fc) );
        FUNC2( file, indent, "0x0,\n" );
    }
    else
        FUNC2( file, indent, "NdrFcShort(0x%x),	/* type offset = %u */\n",
                    typestring_offset, typestring_offset );
    *stack_offset += FUNC1( stack_size, pointer_size );
    return 6;
}