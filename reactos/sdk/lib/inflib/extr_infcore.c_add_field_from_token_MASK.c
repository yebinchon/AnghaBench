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
struct parser {int /*<<< orphan*/  error; scalar_t__ token_len; int /*<<< orphan*/  token; int /*<<< orphan*/ * line; int /*<<< orphan*/ * cur_section; } ;
struct field {int dummy; } ;
typedef  struct field* PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  INF_STATUS_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  INF_STATUS_WRONG_INF_STYLE ; 
 struct field* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct field* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct field *FUNC3( struct parser *parser, int is_key )
{
  PVOID field;

  if (!parser->line)  /* need to start a new line */
    {
      if (parser->cur_section == NULL)  /* got a line before the first section */
        {
          parser->error = INF_STATUS_WRONG_INF_STYLE;
          return NULL;
        }

      parser->line = FUNC2(parser->cur_section);
      if (parser->line == NULL)
        goto error;
    }
  else
    {
//      assert(!is_key);
    }

  if (is_key)
    {
      field = FUNC1(parser->line, parser->token);
    }
  else
    {
      field = FUNC0(parser->line, parser->token);
    }

  if (field != NULL)
    {
      parser->token_len = 0;
      return field;
    }

error:
  parser->error = INF_STATUS_NOT_ENOUGH_MEMORY;
  return NULL;
}