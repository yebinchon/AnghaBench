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
 void* FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (char**) ; 
 char** blob_names ; 
 int /*<<< orphan*/  fixture ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,char***) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  test_blob ; 
 int /*<<< orphan*/  test_blob_empty ; 
 int /*<<< orphan*/  test_blob_subblob ; 

int
FUNC6 (int argc, char **argv)
{
  unsigned int i;

  FUNC4 (&argc, &argv);

  FUNC2 (test_blob_empty);

  for (i = 0; i < FUNC1 (blob_names); i++)
  {
    const void *blob_type = FUNC0 (i);
    const char *blob_name = blob_names[i];

    FUNC3 (fixture, blob_type, blob_name, test_blob);
    FUNC3 (fixture, blob_type, blob_name, test_blob_subblob);
  }

  /*
   * create_sub_blob
   */

  return FUNC5 ();
}