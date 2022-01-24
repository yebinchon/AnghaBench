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
typedef  int /*<<< orphan*/  obuf ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14( void )
{
  static const char obuf[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
  char buf1[16], buf2[24];
  char *tempf;
  FILE *tempfh;
  int ret;

  tempf=FUNC3(".","wne");

  /* Prepare the file. */
  tempfh = FUNC6(tempf,"wb");
  FUNC12(tempfh != NULL, "Can't open test file.\n");
  FUNC9(obuf, 1, sizeof(obuf), tempfh);
  FUNC4(tempfh);

  /* Open the file for input. */
  tempfh = FUNC6(tempf,"rb");
  FUNC12(tempfh != NULL, "Can't open test file.\n");
  FUNC7(buf1, 1, sizeof(buf1), tempfh);

  /* Using fflush() on input stream is undefined in ANSI.
   * But MSDN says that it clears input buffer. */
  FUNC2(FUNC0(tempfh), 0, SEEK_SET);
  ret = FUNC5(tempfh);
  FUNC12(ret == 0, "expected 0, got %d\n", ret);
  FUNC11(buf2, '?', sizeof(buf2));
  FUNC7(buf2, 1, sizeof(buf2), tempfh);
  FUNC12(FUNC10(buf1, buf2, sizeof(buf1)) == 0, "Got unexpected data (%c)\n", buf2[0]);

  /* fflush(NULL) doesn't clear input buffer. */
  FUNC2(FUNC0(tempfh), 0, SEEK_SET);
  ret = FUNC5(NULL);
  FUNC12(ret == 0, "expected 0, got %d\n", ret);
  FUNC11(buf2, '?', sizeof(buf2));
  FUNC7(buf2, 1, sizeof(buf2), tempfh);
  FUNC12(FUNC10(buf1, buf2, sizeof(buf1)) != 0, "Got unexpected data (%c)\n", buf2[0]);

  /* _flushall() clears input buffer. */
  FUNC2(FUNC0(tempfh), 0, SEEK_SET);
  ret = FUNC1();
  FUNC12(ret >= 0, "unexpected ret %d\n", ret);
  FUNC11(buf2, '?', sizeof(buf2));
  FUNC7(buf2, 1, sizeof(buf2), tempfh);
  FUNC12(FUNC10(buf1, buf2, sizeof(buf1)) == 0, "Got unexpected data (%c)\n", buf2[0]);

  FUNC4(tempfh);

  FUNC13(tempf);
  FUNC8(tempf);
}