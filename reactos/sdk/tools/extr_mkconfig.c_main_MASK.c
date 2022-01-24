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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char*) ; 

int
FUNC7(int argc, char* argv[])
{
  int include_tests;
  unsigned int i;
  char* outbuf;
  char* s;
  char config[512];

  if (argc == 1)
    {
      FUNC0(stderr, "Not enough arguments\n");
      return(1);
    }

  outbuf = FUNC1(256 * 1024);
  if (outbuf == NULL)
    {
      FUNC0(stderr, "Out of memory 1\n");
      return(1);
    }

  s = outbuf;
  s = s + FUNC2(s, "/* Automatically generated, ");
  s = s + FUNC2(s, "Edit the Makefile to change configuration */\n");
  s = s + FUNC2(s, "#ifndef __INCLUDE_CONFIG_H\n");
  s = s + FUNC2(s, "#define __INCLUDE_CONFIG_H\n");
  FUNC5(config, "");
  include_tests = 0;
  for (i = 2; i < argc; i++)
    {
      if (FUNC4(argv[i], "REGTESTS") == 0)
        {
          include_tests = 1;
        }
      else
        {
          s = s + FUNC2(s, "#ifndef %s\n", argv[i]);
          s = s + FUNC2(s, "#define %s\n", argv[i]);
          s = s + FUNC2(s, "#endif /* %s */\n", argv[i]);
        }
      FUNC3(config, argv[i]);
      if (i != (argc - 1))
	{
	  FUNC3(config, " ");
	}
    }
  if (include_tests)
    {
      s = s + FUNC2(s, "#ifndef __ASM__\n");
      s = s + FUNC2(s, "extern void PrepareTests();\n");
      s = s + FUNC2(s, "#define PREPARE_TESTS PrepareTests();\n");
	  s = s + FUNC2(s, "#endif /* __ASM__ */\n");
    }
  else
    {
      s = s + FUNC2(s, "#define PREPARE_TESTS\n");
    }
  s = s + FUNC2(s, "#define CONFIG \"%s\"\n", config);
  s = s + FUNC2(s, "#endif /* __INCLUDE_CONFIG_H */\n");

  return(FUNC6(outbuf, argv[1]));
}