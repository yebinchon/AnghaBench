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
typedef  int /*<<< orphan*/  hb_buffer_t ;
typedef  int /*<<< orphan*/  gconstpointer ;
struct TYPE_3__ {int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ fixture_t ;

/* Variables and functions */
#define  BUFFER_EMPTY 132 
#define  BUFFER_ONE_BY_ONE 131 
#define  BUFFER_UTF16 130 
#define  BUFFER_UTF32 129 
#define  BUFFER_UTF8 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * utf16 ; 
 int /*<<< orphan*/ * utf32 ; 
 int /*<<< orphan*/ * utf8 ; 

__attribute__((used)) static void
FUNC8 (fixture_t *fixture, gconstpointer user_data)
{
  hb_buffer_t *b;
  unsigned int i;

  b = fixture->buffer = FUNC7 ();

  switch (FUNC0 (user_data))
  {
    case BUFFER_EMPTY:
      break;

    case BUFFER_ONE_BY_ONE:
      for (i = 1; i < FUNC1 (utf32) - 1; i++)
	FUNC3 (b, utf32[i], i);
      break;

    case BUFFER_UTF32:
      FUNC5 (b, utf32, FUNC1 (utf32), 1, FUNC1 (utf32) - 2);
      break;

    case BUFFER_UTF16:
      FUNC4 (b, utf16, FUNC1 (utf16), 1, FUNC1 (utf16) - 2);
      break;

    case BUFFER_UTF8:
      FUNC6  (b, utf8,  FUNC1 (utf8),  1, FUNC1 (utf8)  - 2);
      break;

    default:
      FUNC2 ();
  }
}