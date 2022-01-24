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
struct parser {char* start; char const* end; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parser*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,char const*) ; 

__attribute__((used)) static const WCHAR *FUNC3( struct parser *parser, const WCHAR *pos )
{
  const WCHAR *p, *token_end = parser->start;

  for (p = pos; !FUNC0( parser, p ); p++)
    {
      if (*p == '"')
        {
          if (p+1 < parser->end && p[1] == '"')  /* double quotes */
            {
              FUNC2( parser, p + 1 );
              parser->start = token_end = p + 2;
              p++;
            }
          else  /* end of quotes */
            {
              FUNC2( parser, p );
              parser->start = p + 1;
              FUNC1( parser );
              return p + 1;
            }
        }
    }
  FUNC2( parser, p );
  FUNC1( parser );
  return p;
}