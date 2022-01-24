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
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strm_event_loop_started ; 
 int /*<<< orphan*/  sym_mutex ; 

strm_string
FUNC4(const char* p, strm_int len)
{
  strm_string str;

  FUNC0(p!=NULL);
  if (!strm_event_loop_started) {
    return FUNC3(p, len, 0);
  }
  FUNC1(&sym_mutex);
  str = FUNC3(p, len, 0);
  FUNC2(&sym_mutex);

  return str;
}