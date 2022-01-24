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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * file_buffer ; 
 int /*<<< orphan*/ * file_handle ; 
 scalar_t__ file_pointer ; 
 scalar_t__ file_size ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(char *filename)
{
  file_handle = FUNC2(filename, "rb");
  if (file_handle == NULL)
    {
      FUNC7("Can't open %s\n", filename);
      FUNC0(1);
    }

  // Get the size of the file
  FUNC4(file_handle, 0, SEEK_END);
  file_size = FUNC5(file_handle);

  // Load it all into memory
  file_buffer = FUNC6(file_size);
  if (file_buffer == NULL)
    {
      FUNC1(file_handle);
      FUNC7("Out of memory\n");
      FUNC0(1);
    }
  FUNC4(file_handle, 0, SEEK_SET);
  if (file_size > 0)
    {
      if (FUNC3 (file_buffer, 1, file_size, file_handle) < 1)
        {
          FUNC1(file_handle);
          FUNC7("Read error in file %s\n", filename);
          FUNC0(1);
        }
    }

  file_pointer = 0;
}