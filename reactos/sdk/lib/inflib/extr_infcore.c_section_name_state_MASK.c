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
struct parser {int /*<<< orphan*/  error; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  COMMENT ; 
 int /*<<< orphan*/  INF_STATUS_BAD_SECTION_NAME_LINE ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/ * FUNC0 (struct parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parser*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const WCHAR *FUNC5( struct parser *parser, const WCHAR *pos )
{
  const WCHAR *p;

  for (p = pos; !FUNC1( parser, p ); p++)
    {
      if (*p == ']')
        {
          FUNC3( parser, p );
          if (FUNC0( parser ) == NULL)
            return NULL;
          FUNC2( parser, LINE_START );
          FUNC4( parser, COMMENT );  /* ignore everything else on the line */
          return p + 1;
        }
    }
  parser->error = INF_STATUS_BAD_SECTION_NAME_LINE; /* unfinished section name */
  return NULL;
}