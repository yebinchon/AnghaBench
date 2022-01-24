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
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
  FILE *fp;
  char buf[513], rbuf[513];
  int i, j;
  for (i = 0; i < 511; i++)
    {
      j = (i%('~' - ' ')+ ' ');
      buf[i] = j;
    }
  buf[511] = '\n';
  buf[512] =0;
  fp = FUNC2("boundary.tst", "wt");
  FUNC4(buf, 512,1,fp);
  FUNC0(fp);
  fp = FUNC2("boundary.tst", "rt");
  for(i=0; i<512; i++)
    {
      FUNC3(fp,0 , SEEK_CUR);
      rbuf[i] = FUNC1(fp);
    }
  rbuf[512] =0;
  FUNC0(fp);
  FUNC7("boundary.tst");

  FUNC5(FUNC6(buf, rbuf) == 0,"CRLF on buffer boundary failure\n");
  }