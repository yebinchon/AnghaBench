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
typedef  int /*<<< orphan*/  stb_matcher ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
   stb_matcher *m = FUNC2();
   //         tok_en5 .3 20.1 20. .20 .1
   char *s = "tok_en5.3 20.1 20. .20.1";

   FUNC1(m, "[a-zA-Z_][a-zA-Z0-9_]*", 1   );
   FUNC1(m, "[0-9]*\\.?[0-9]*"      , 2   );
   FUNC1(m, "[\r\n\t ]+"            , 3   );
   FUNC1(m, "."                     , -99 );
   s=FUNC0(m,s,1,7, "stb_lex 1");
   s=FUNC0(m,s,2,2, "stb_lex 2");
   s=FUNC0(m,s,3,1, "stb_lex 3");
   s=FUNC0(m,s,2,4, "stb_lex 4");
   s=FUNC0(m,s,3,1, "stb_lex 5");
   s=FUNC0(m,s,2,3, "stb_lex 6");
   s=FUNC0(m,s,3,1, "stb_lex 7");
   s=FUNC0(m,s,2,3, "stb_lex 8");
   s=FUNC0(m,s,2,2, "stb_lex 9");
   s=FUNC0(m,s,0,0, "stb_lex 10");
   FUNC3(m);
}