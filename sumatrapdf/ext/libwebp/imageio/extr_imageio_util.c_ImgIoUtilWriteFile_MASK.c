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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC6(const char* const file_name,
                       const uint8_t* data, size_t data_size) {
  int ok;
  FILE* out;
  const int to_stdout = (file_name == NULL) || !FUNC3(file_name, "-");

  if (data == NULL) {
    return 0;
  }
  out = to_stdout ? FUNC0(stdout) : FUNC1(file_name, "wb");
  if (out == NULL) {
    FUNC2(stderr, "Error! Cannot open output file '%s'\n",
             (const W_CHAR*)file_name);
    return 0;
  }
  ok = (FUNC5(data, data_size, 1, out) == 1);
  if (out != stdout) FUNC4(out);
  return ok;
}