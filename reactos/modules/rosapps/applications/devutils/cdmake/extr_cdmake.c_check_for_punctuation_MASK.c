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

/* Variables and functions */
 int /*<<< orphan*/  accept_punctuation_marks ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int c, const char *name)
{
    c = FUNC2(c & 0xFF);
    if (!accept_punctuation_marks && !FUNC1(c) && c != '_')
        FUNC0("Punctuation mark in %s", name);
    return c;
}