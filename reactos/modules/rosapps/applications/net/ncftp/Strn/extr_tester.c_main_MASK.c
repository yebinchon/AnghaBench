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
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char**,char*,char*,...) ; 
 char* FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int FUNC9(int argc, char **argv)
{
	char a[8];
	char pad1[32];
	char *b;
	char c[37];
	char pad2[23];
	int i;
	int len1, len2;

	b = FUNC2(a, "hello", sizeof(a));
	b = FUNC1(b, "world", sizeof(a));
	FUNC7("1: result=[%s] should be=[%s]\n",
		b,
		"hellowo"
	);

	for (i=0; i<sizeof(c); i++)
		c[i] = 'X';
	b = FUNC2(c, "testing", sizeof(c) - 2);
#if (STRN_ZERO_PAD == 1)
	for (i=7; i<sizeof(c) - 2; i++) {
		if (c[i] != '\0') {
			printf("2: did not clear to end of buffer\n");
			break;
		}
	}
#endif
	for (i=sizeof(c) - 2; i<sizeof(c); i++) {
		if (c[i] != 'X') {
			FUNC7("2: overwrote buffer\n");
			break;
		}
	}

	for (i=0; i<sizeof(c); i++)
		c[i] = 'X';
	b = FUNC2(c, "testing", sizeof(c) - 2);
	b = FUNC1(b, " still", sizeof(c) - 2);
#if (STRN_ZERO_PAD == 1)
	for (i=13; i<sizeof(c) - 2; i++) {
		if (c[i] != '\0') {
			printf("3: did not clear to end of buffer\n");
			break;
		}
	}
#endif
	for (i=sizeof(c) - 2; i<sizeof(c); i++) {
		if (c[i] != 'X') {
			FUNC7("3: overwrote buffer\n");
			break;
		}
	}

/*--------------*/

	b = FUNC4(a, "hello", sizeof(a));
	len1 = (int) (b - a);
	b = FUNC3(a, "world", sizeof(a));
	len2 = (int) (b - a);
	FUNC7("4: result=[%s] should be=[%s] len1=%d len2=%d\n",
		a,
		"hellowo",
		len1,
		len2
	);

	for (i=0; i<sizeof(c); i++)
		c[i] = 'X';
	b = FUNC4(c, "testing", sizeof(c) - 2);
#if (STRNP_ZERO_PAD == 1)
	for (i=7; i<sizeof(c) - 2; i++) {
		if (c[i] != '\0') {
			printf("5: did not clear to end of buffer\n");
			break;
		}
	}
#endif
	for (i=sizeof(c) - 2; i<sizeof(c); i++) {
		if (c[i] != 'X') {
			FUNC7("5: overwrote buffer\n");
			break;
		}
	}

	for (i=0; i<sizeof(c); i++)
		c[i] = 'X';
	b = FUNC4(c, "testing", sizeof(c) - 2);
	b = FUNC3(c, " still", sizeof(c) - 2);
#if (STRNP_ZERO_PAD == 1)
	for (i=13; i<sizeof(c) - 2; i++) {
		if (c[i] != '\0') {
			printf("6: did not clear to end of buffer\n");
			break;
		}
	}
#endif
	for (i=sizeof(c) - 2; i<sizeof(c); i++) {
		if (c[i] != 'X') {
			FUNC7("6: overwrote buffer\n");
			break;
		}
	}

/*--------------*/
	{
		char *str;

		str = NULL;
		if (FUNC0(&str, "this is a test", 0) == NULL) {
			FUNC7("7a: fail\n");
		} else if (FUNC8(str, "this is a test") != 0) {
			FUNC7("7b: fail\n");
		}
		FUNC6(str);

		str = NULL;
		if (FUNC0(&str, "this is a test", 0) == NULL) {
			FUNC7("7c: fail\n");
		} else if (FUNC8(str, "this is a test") != 0) {
			FUNC7("7d: fail\n");
		} else if (FUNC0(&str, " ", "", "and", " ", "so is this", 0) == NULL) {
			FUNC7("7e: fail\n");
		} else if (FUNC8(str, "this is a test and so is this") != 0) {
			FUNC7("7f: fail\n");
		}
		FUNC6(str);
	}
	FUNC5(0);
}