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
typedef  int LONG ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( void )
{
  char* tempf;
  FILE *tempfh;
  static const char mytext[]= "This is test_ctrlz";
  char buffer[256];
  int i, j;
  LONG l;

  tempf=FUNC0(".","wne");
  tempfh = FUNC4(tempf,"wb");
  FUNC6(mytext,tempfh);
  j = 0x1a; /* a ctrl-z character signals EOF in text mode */
  FUNC5(j,tempfh);
  j = '\r';
  FUNC5(j,tempfh);
  j = '\n';
  FUNC5(j,tempfh);
  j = 'a';
  FUNC5(j,tempfh);
  FUNC1(tempfh);
  tempfh = FUNC4(tempf,"rt"); /* open in TEXT mode */
  FUNC9(FUNC3(buffer,256,tempfh) != 0,"fgets failed unexpected\n");
  i=FUNC10(buffer);
  j=FUNC10(mytext);
  FUNC9(i==j, "returned string length expected %d got %d\n", j, i);
  j+=4; /* ftell should indicate the true end of file */
  l=FUNC8(tempfh);
  FUNC9(l==j, "ftell expected %d got %d\n", j, l);
  FUNC9(FUNC2(tempfh), "did not get EOF\n");
  FUNC1(tempfh);
  
  tempfh = FUNC4(tempf,"rb"); /* open in BINARY mode */
  FUNC9(FUNC3(buffer,256,tempfh) != 0,"fgets failed unexpected\n");
  i=FUNC10(buffer);
  j=FUNC10(mytext)+3; /* should get through newline */
  FUNC9(i==j, "returned string length expected %d got %d\n", j, i);
  l=FUNC8(tempfh);
  FUNC9(l==j, "ftell expected %d got %d\n", j, l);
  FUNC9(FUNC3(buffer,256,tempfh) != 0,"fgets failed unexpected\n");
  i=FUNC10(buffer);
  FUNC9(i==1, "returned string length expected %d got %d\n", 1, i);
  FUNC9(FUNC2(tempfh), "did not get EOF\n");
  FUNC1(tempfh);
  FUNC11(tempf);
  FUNC7(tempf);
}