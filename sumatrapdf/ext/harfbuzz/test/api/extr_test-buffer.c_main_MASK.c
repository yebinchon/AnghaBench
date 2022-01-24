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

/* Variables and functions */
 unsigned int BUFFER_EMPTY ; 
 unsigned int BUFFER_NUM_TYPES ; 
 void* FUNC0 (unsigned int) ; 
 char** buffer_names ; 
 int /*<<< orphan*/  fixture ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,char***) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  test_buffer_allocation ; 
 int /*<<< orphan*/  test_buffer_contents ; 
 int /*<<< orphan*/  test_buffer_empty ; 
 int /*<<< orphan*/  test_buffer_positions ; 
 int /*<<< orphan*/  test_buffer_properties ; 
 int /*<<< orphan*/  test_buffer_utf16_conversion ; 
 int /*<<< orphan*/  test_buffer_utf32_conversion ; 
 int /*<<< orphan*/  test_buffer_utf8_conversion ; 
 int /*<<< orphan*/  test_buffer_utf8_validity ; 

int
FUNC6 (int argc, char **argv)
{
  unsigned int i;

  FUNC4 (&argc, &argv);

  for (i = 0; i < BUFFER_NUM_TYPES; i++)
  {
    const void *buffer_type = FUNC0 (i);
    const char *buffer_name = buffer_names[i];

    FUNC3 (fixture, buffer_type, buffer_name, test_buffer_properties);
    FUNC3 (fixture, buffer_type, buffer_name, test_buffer_contents);
    FUNC3 (fixture, buffer_type, buffer_name, test_buffer_positions);
  }

  FUNC2 (fixture, FUNC0 (BUFFER_EMPTY), test_buffer_allocation);

  FUNC1 (test_buffer_utf8_conversion);
  FUNC1 (test_buffer_utf8_validity);
  FUNC1 (test_buffer_utf16_conversion);
  FUNC1 (test_buffer_utf32_conversion);
  FUNC1 (test_buffer_empty);

  return FUNC5();
}