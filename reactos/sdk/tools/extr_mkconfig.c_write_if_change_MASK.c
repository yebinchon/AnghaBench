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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 char* FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC11 (char*) ; 

int
FUNC12(char* outbuf, char* filename)
{
  FILE* out;
  unsigned int end;
  char* cmpbuf;
  unsigned int stat;

  out = FUNC1(filename, "rb");
  if (out == NULL)
    {
      out = FUNC1(filename, "wb");
      if (out == NULL)
	{
	  FUNC2(stderr, "Unable to create output file\n");
	  return(1);
	}
      FUNC3(outbuf, out);
      FUNC0(out);
      return(0);
    }

  FUNC6(out, 0, SEEK_END);
  end = FUNC7(out);
  cmpbuf = FUNC9(end);
  if (cmpbuf == NULL)
    {
      FUNC2(stderr, "Out of memory\n");
      FUNC0(out);
      return(1);
    }

  FUNC6(out, 0, SEEK_SET);
  stat = FUNC4(cmpbuf, 1, end, out);
  if (stat != end)
    {
      FUNC2(stderr, "Failed to read data\n");
      FUNC0(out);
      FUNC5(cmpbuf);
      return(1);
    }
  if (end == FUNC11(outbuf) && FUNC10(cmpbuf, outbuf, end) == 0)
    {
      FUNC0(out);
      FUNC5(cmpbuf);
      return(0);
    }

  FUNC0(out);
  FUNC5(cmpbuf);
  out = FUNC1(filename, "wb");
  if (out == NULL)
    {
      FUNC2(stderr, "Unable to create output file\n");
      return(1);
    }

  stat = FUNC8(outbuf, 1, FUNC11(outbuf), out);
  if (FUNC11(outbuf) != stat)
    {
      FUNC2(stderr, "Unable to write output file\n");
      FUNC0(out);
      return(1);
    }
  FUNC0(out);
  return(0);
}