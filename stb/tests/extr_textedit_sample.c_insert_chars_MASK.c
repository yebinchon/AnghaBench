#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ stringlen; int /*<<< orphan*/ * string; } ;
typedef  TYPE_1__ STB_TEXTEDIT_STRING ;
typedef  int /*<<< orphan*/  STB_TEXTEDIT_CHARTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC3(STB_TEXTEDIT_STRING *str, int pos, STB_TEXTEDIT_CHARTYPE *newtext, int num)
{
   str->string = FUNC2(str->string, str->stringlen + num);
   FUNC1(&str->string[pos+num], &str->string[pos], str->stringlen - pos);
   FUNC0(&str->string[pos], newtext, num);
   str->stringlen += num;
   return 1; // always succeeds
}