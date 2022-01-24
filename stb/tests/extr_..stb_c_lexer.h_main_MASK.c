#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ token; } ;
typedef  TYPE_1__ stb_lexer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CLEX_parse_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(int argc, char **argv)
{
   FILE *f = FUNC1("stb_c_lexer.h","rb");
   char *text = (char *) FUNC5(1 << 20);
   int len = f ? (int) FUNC3(text, 1, 1<<20, f) : -1;
   stb_lexer lex;
   if (len < 0) {
      FUNC2(stderr, "Error opening file\n");
      FUNC4(text);
      FUNC0(f);
      return 1;
   }
   FUNC0(f);

   FUNC9(&lex, text, text+len, (char *) FUNC5(0x10000), 0x10000);
   while (FUNC8(&lex)) {
      if (lex.token == CLEX_parse_error) {
         FUNC7("\n<<<PARSE ERROR>>>\n");
         break;
      }
      FUNC6(&lex);
      FUNC7("  ");
   }
   return 0;
}