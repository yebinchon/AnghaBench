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
struct parser {int const* start; int /*<<< orphan*/  line_pos; } ;
typedef  int WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  COMMENT ; 
 int /*<<< orphan*/  EOL_BACKSLASH ; 
 int /*<<< orphan*/  LEADING_SPACES ; 
 int /*<<< orphan*/  FUNC0 (struct parser*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int const*) ; 
 int /*<<< orphan*/  FUNC5 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const WCHAR *FUNC6( struct parser *parser, const WCHAR *pos )
{
    const WCHAR *p;

    for (p = pos; !FUNC0( parser, p ); p++)
    {
        switch(*p)
        {
        case '\n':
            parser->line_pos++;
            parser->start = p + 1;
            FUNC5( parser, LEADING_SPACES );
            return p + 1;
        case '\\':
            continue;
        case ';':
            FUNC3( parser, EOL_BACKSLASH );
            FUNC5( parser, COMMENT );
            return p + 1;
        default:
            if (FUNC1(*p)) continue;
            FUNC4( parser, p );
            FUNC2( parser );
            return p;
        }
    }
    parser->start = p;
    FUNC2( parser );
    return p;
}