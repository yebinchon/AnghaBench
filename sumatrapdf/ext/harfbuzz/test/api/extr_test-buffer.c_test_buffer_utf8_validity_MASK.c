#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_len; scalar_t__ offset; scalar_t__ valid; int /*<<< orphan*/  utf8; } ;
typedef  TYPE_1__ utf8_validity_test_t ;
struct TYPE_7__ {scalar_t__ codepoint; scalar_t__ cluster; } ;
typedef  TYPE_2__ hb_glyph_info_t ;
typedef  scalar_t__ hb_codepoint_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* utf8_validity_tests ; 

__attribute__((used)) static void
FUNC12 (void)
{
  hb_buffer_t *b;
  unsigned int i;

  b = FUNC7 ();
  FUNC10 (b, (hb_codepoint_t) -1);

  for (i = 0; i < FUNC0 (utf8_validity_tests); i++)
  {
    const utf8_validity_test_t *test = &utf8_validity_tests[i];
    unsigned int text_bytes, segment_bytes, j, len;
    hb_glyph_info_t *glyphs;
    char *escaped;

    escaped = FUNC3 (test->utf8, NULL);
    FUNC4 ("UTF-8 test #%d: %s", i, escaped);
    FUNC2 (escaped);

    text_bytes = FUNC11 (test->utf8);
    if (test->max_len == -1)
      segment_bytes = text_bytes;
    else
      segment_bytes = test->max_len;

    FUNC6 (b);
    FUNC5 (b, test->utf8, text_bytes,  0, segment_bytes);

    glyphs = FUNC9 (b, &len);
    for (j = 0; j < len; j++)
      if (glyphs[j].codepoint == (hb_codepoint_t) -1)
	break;

    FUNC1 (test->valid ? j == len : j < len);
    if (!test->valid)
      FUNC1 (glyphs[j].cluster == test->offset);
  }

  FUNC8 (b);
}