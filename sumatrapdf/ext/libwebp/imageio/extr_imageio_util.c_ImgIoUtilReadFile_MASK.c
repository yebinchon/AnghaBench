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
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char const**,size_t*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(const char* const file_name,
                      const uint8_t** data, size_t* data_size) {
  int ok;
  uint8_t* file_data;
  size_t file_size;
  FILE* in;
  const int from_stdin = (file_name == NULL) || !FUNC3(file_name, "-");

  if (from_stdin) return FUNC0(data, data_size);

  if (data == NULL || data_size == NULL) return 0;
  *data = NULL;
  *data_size = 0;

  in = FUNC1(file_name, "rb");
  if (in == NULL) {
    FUNC2(stderr, "cannot open input file '%s'\n", (const W_CHAR*)file_name);
    return 0;
  }
  FUNC7(in, 0, SEEK_END);
  file_size = FUNC8(in);
  FUNC7(in, 0, SEEK_SET);
  // we allocate one extra byte for the \0 terminator
  file_data = (uint8_t*)FUNC9(file_size + 1);
  if (file_data == NULL) {
    FUNC4(in);
    FUNC2(stderr, "memory allocation failure when reading file %s\n",
             (const W_CHAR*)file_name);
    return 0;
  }
  ok = (FUNC5(file_data, file_size, 1, in) == 1);
  FUNC4(in);

  if (!ok) {
    FUNC2(stderr, "Could not read %d bytes of data from file %s\n",
             (int)file_size, (const W_CHAR*)file_name);
    FUNC6(file_data);
    return 0;
  }
  file_data[file_size] = '\0';  // convenient 0-terminator
  *data = file_data;
  *data_size = file_size;
  return 1;
}