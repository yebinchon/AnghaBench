#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_unicode_funcs_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;
typedef  int /*<<< orphan*/  gconstpointer ;
struct TYPE_3__ {int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ fixture_t ;

/* Variables and functions */
 scalar_t__ HB_BUFFER_FLAGS_DEFAULT ; 
 scalar_t__ HB_BUFFER_FLAG_BOT ; 
 unsigned int HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT ; 
 scalar_t__ HB_DIRECTION_INVALID ; 
 scalar_t__ HB_DIRECTION_RTL ; 
 scalar_t__ HB_SCRIPT_ARABIC ; 
 scalar_t__ HB_SCRIPT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 () ; 

__attribute__((used)) static void
FUNC19 (fixture_t *fixture, gconstpointer user_data)
{
  hb_buffer_t *b = fixture->buffer;
  hb_unicode_funcs_t *ufuncs;

  /* test default properties */

  FUNC0 (FUNC7 (b) == FUNC18 ());
  FUNC0 (FUNC2 (b) == HB_DIRECTION_INVALID);
  FUNC0 (FUNC6 (b) == HB_SCRIPT_INVALID);
  FUNC0 (FUNC4 (b) == NULL);


  /* test property changes are retained */
  ufuncs = FUNC16 (NULL);
  FUNC14 (b, ufuncs);
  FUNC17 (ufuncs);
  FUNC0 (FUNC7 (b) == ufuncs);

  FUNC9 (b, HB_DIRECTION_RTL);
  FUNC0 (FUNC2 (b) == HB_DIRECTION_RTL);

  FUNC13 (b, HB_SCRIPT_ARABIC);
  FUNC0 (FUNC6 (b) == HB_SCRIPT_ARABIC);

  FUNC11 (b, FUNC15 ("fa", -1));
  FUNC0 (FUNC4 (b) == FUNC15 ("Fa", -1));

  FUNC10 (b, HB_BUFFER_FLAG_BOT);
  FUNC0 (FUNC3 (b) == HB_BUFFER_FLAG_BOT);

  FUNC12 (b, (unsigned int) -1);
  FUNC0 (FUNC5 (b) == (unsigned int) -1);


  /* test clear_contents clears all these properties: */

  FUNC1 (b);

  FUNC0 (FUNC7 (b) == ufuncs);
  FUNC0 (FUNC2 (b) == HB_DIRECTION_INVALID);
  FUNC0 (FUNC6 (b) == HB_SCRIPT_INVALID);
  FUNC0 (FUNC4 (b) == NULL);

  /* but not these: */

  FUNC0 (FUNC3 (b) != HB_BUFFER_FLAGS_DEFAULT);
  FUNC0 (FUNC5 (b) != HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT);


  /* test reset clears all properties */

  FUNC9 (b, HB_DIRECTION_RTL);
  FUNC0 (FUNC2 (b) == HB_DIRECTION_RTL);

  FUNC13 (b, HB_SCRIPT_ARABIC);
  FUNC0 (FUNC6 (b) == HB_SCRIPT_ARABIC);

  FUNC11 (b, FUNC15 ("fa", -1));
  FUNC0 (FUNC4 (b) == FUNC15 ("Fa", -1));

  FUNC10 (b, HB_BUFFER_FLAG_BOT);
  FUNC0 (FUNC3 (b) == HB_BUFFER_FLAG_BOT);

  FUNC12 (b, (unsigned int) -1);
  FUNC0 (FUNC5 (b) == (unsigned int) -1);

  FUNC8 (b);

  FUNC0 (FUNC7 (b) == FUNC18 ());
  FUNC0 (FUNC2 (b) == HB_DIRECTION_INVALID);
  FUNC0 (FUNC6 (b) == HB_SCRIPT_INVALID);
  FUNC0 (FUNC4 (b) == NULL);
  FUNC0 (FUNC3 (b) == HB_BUFFER_FLAGS_DEFAULT);
  FUNC0 (FUNC5 (b) == HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT);
}