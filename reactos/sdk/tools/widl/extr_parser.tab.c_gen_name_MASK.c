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
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  input_idl_name ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (size_t) ; 

__attribute__((used)) static char *FUNC5(void)
{
  static const char format[] = "__WIDL_%s_generated_name_%08lX";
  static unsigned long n = 0;
  static const char *file_id;
  static size_t size;
  char *name;

  if (! file_id)
  {
    char *dst = FUNC0(input_idl_name, ".idl");
    file_id = dst;

    for (; *dst; ++dst)
      if (! FUNC1((unsigned char) *dst))
        *dst = '_';

    size = sizeof format - 7 + FUNC3(file_id) + 8;
  }

  name = FUNC4(size);
  FUNC2(name, format, file_id, n++);
  return name;
}