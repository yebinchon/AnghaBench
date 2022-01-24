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
typedef  int (* lexical_function ) (int /*<<< orphan*/  const) ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  lex_Anudatta 142 
#define  lex_Composed_Vowel 141 
#define  lex_Consonant 140 
#define  lex_Halant 139 
#define  lex_Matra_above 138 
#define  lex_Matra_below 137 
#define  lex_Matra_post 136 
#define  lex_Matra_pre 135 
#define  lex_Modifier 134 
#define  lex_Nukta 133 
#define  lex_Ra 132 
#define  lex_Vedic 131 
#define  lex_Vowel 130 
#define  lex_ZWJ 129 
#define  lex_ZWNJ 128 
 int /*<<< orphan*/  uniscribe ; 

__attribute__((used)) static void FUNC2(const WCHAR *str, unsigned int char_count, lexical_function f)
{
    int i;
    if (FUNC1(uniscribe))
    {
        for (i = 0; i < char_count; ++i)
        {
            switch (f(str[i]))
            {
                case lex_Consonant: FUNC0("C"); break;
                case lex_Ra: FUNC0("Ra"); break;
                case lex_Vowel: FUNC0("V"); break;
                case lex_Nukta: FUNC0("N"); break;
                case lex_Halant: FUNC0("H"); break;
                case lex_ZWNJ: FUNC0("Zwnj"); break;
                case lex_ZWJ: FUNC0("Zwj"); break;
                case lex_Matra_post: FUNC0("Mp");break;
                case lex_Matra_above: FUNC0("Ma");break;
                case lex_Matra_below: FUNC0("Mb");break;
                case lex_Matra_pre: FUNC0("Mm");break;
                case lex_Modifier: FUNC0("Sm"); break;
                case lex_Vedic: FUNC0("Vd"); break;
                case lex_Anudatta: FUNC0("A"); break;
                case lex_Composed_Vowel: FUNC0("t"); break;
                default:
                    FUNC0("X"); break;
            }
        }
        FUNC0("\n");
    }
}