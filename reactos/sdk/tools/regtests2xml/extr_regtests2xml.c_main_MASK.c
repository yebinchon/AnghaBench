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
 int /*<<< orphan*/  HELP ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * out ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char **argv)
{
  char *input_file;
  char *output_file;

  if (argc < 3)
    {
      FUNC7(HELP);
      return 1;
    }

  input_file = FUNC0(argv[1]);
  if (input_file[0] == 0)
    {
      FUNC3(input_file);
      FUNC6("Missing input-filename\n");
      return 1;
    }

  output_file = FUNC0(argv[2]);
  if (output_file[0] == 0)
    {
      FUNC3(output_file);
      FUNC3(input_file);
      FUNC6("Missing output-filename\n");
      return 1;
    }

  out = FUNC2(output_file, "wb");
  if (out == NULL)
    {
        FUNC3(input_file);
        FUNC3(output_file);
    	FUNC6("Cannot open output file");
    	return 1;
     }

  FUNC5(input_file);

  FUNC4();

  FUNC3(input_file);
  FUNC3(output_file);
  FUNC1(out);

  return 0;
}