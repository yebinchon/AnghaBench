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
typedef  char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,int,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

int FUNC7(const uint8_t** data, size_t* data_size) {
  static const size_t kBlockSize = 16384;  // default initial size
  size_t max_size = 0;
  size_t size = 0;
  uint8_t* input = NULL;

  if (data == NULL || data_size == NULL) return 0;
  *data = NULL;
  *data_size = 0;

  if (!FUNC0(stdin)) return 0;

  while (!FUNC1(stdin)) {
    // We double the buffer size each time and read as much as possible.
    const size_t extra_size = (max_size == 0) ? kBlockSize : max_size;
    // we allocate one extra byte for the \0 terminator
    void* const new_data = FUNC6(input, max_size + extra_size + 1);
    if (new_data == NULL) goto Error;
    input = (uint8_t*)new_data;
    max_size += extra_size;
    size += FUNC4(input + size, 1, extra_size, stdin);
    if (size < max_size) break;
  }
  if (FUNC2(stdin)) goto Error;
  if (input != NULL) input[size] = '\0';  // convenient 0-terminator
  *data = input;
  *data_size = size;
  return 1;

 Error:
  FUNC5(input);
  FUNC3(stderr, "Could not read from stdin\n");
  return 0;
}