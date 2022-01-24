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
struct parser {int cur_section; int /*<<< orphan*/  error; scalar_t__ token_len; TYPE_1__* line; int /*<<< orphan*/  file; int /*<<< orphan*/  token; } ;
struct field {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  first_field; int /*<<< orphan*/  key_field; int /*<<< orphan*/  nb_fields; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR_EXPECTED_SECTION_NAME ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 struct field* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct field *FUNC4( struct parser *parser, BOOL is_key )
{
    struct field *field;
    WCHAR *text;

    if (!parser->line)  /* need to start a new line */
    {
        if (parser->cur_section == -1)  /* got a line before the first section */
        {
            parser->error = ERROR_EXPECTED_SECTION_NAME;
            return NULL;
        }
        if (!(parser->line = FUNC2( parser->file, parser->cur_section ))) goto error;
    }
    else FUNC0(!is_key);

    text = FUNC3( parser->file, parser->token );
    if ((field = FUNC1( parser->file, text )))
    {
        if (!is_key) parser->line->nb_fields++;
        else
        {
            /* replace first field by key field */
            parser->line->key_field = parser->line->first_field;
            parser->line->first_field++;
        }
        parser->token_len = 0;
        return field;
    }
 error:
    parser->error = ERROR_NOT_ENOUGH_MEMORY;
    return NULL;
}