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
typedef  int /*<<< orphan*/  to ;
typedef  int /*<<< orphan*/  from ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,int,char*) ; 

__attribute__((used)) static void FUNC5( void ) {
    char original[]  = "BADCFEHGJILKNMPORQTSVUXWZY@#";
    char expected1[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ@#";
    char expected2[] = "ABCDEFGHIJKLMNOPQRSTUVWX$";
    char expected3[] = "$";
    
    char from[30];
    char to[30];
    
    int testsize;
    
    /* Test 1 - normal even case */                               
    FUNC3(to,'$', sizeof(to));
    FUNC3(from,'@', sizeof(from));
    testsize = 26;
    FUNC2(from, original, testsize);
    FUNC0( from, to, testsize );
    FUNC4(FUNC1(to,expected1,testsize) == 0, "Testing even size %d returned '%*.*s'\n", testsize, testsize, testsize, to);

    /* Test 2 - uneven case  */                               
    FUNC3(to,'$', sizeof(to));
    FUNC3(from,'@', sizeof(from));
    testsize = 25;
    FUNC2(from, original, testsize);
    FUNC0( from, to, testsize );
    FUNC4(FUNC1(to,expected2,testsize) == 0, "Testing odd size %d returned '%*.*s'\n", testsize, testsize, testsize, to);

    /* Test 3 - from = to */                               
    FUNC3(to,'$', sizeof(to));
    FUNC3(from,'@', sizeof(from));
    testsize = 26;
    FUNC2(to, original, testsize);
    FUNC0( to, to, testsize );
    FUNC4(FUNC1(to,expected1,testsize) == 0, "Testing overlapped size %d returned '%*.*s'\n", testsize, testsize, testsize, to);

    /* Test 4 - 1 bytes */                               
    FUNC3(to,'$', sizeof(to));
    FUNC3(from,'@', sizeof(from));
    testsize = 1;
    FUNC2(from, original, testsize);
    FUNC0( from, to, testsize );
    FUNC4(FUNC1(to,expected3,testsize) == 0, "Testing small size %d returned '%*.*s'\n", testsize, testsize, testsize, to);
}