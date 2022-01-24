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
struct tty_key {struct tty_key* right; struct tty_key* left; struct tty_key* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_key*) ; 

__attribute__((used)) static void
FUNC1(struct tty_key *tk)
{
	if (tk->next != NULL)
		FUNC1(tk->next);
	if (tk->left != NULL)
		FUNC1(tk->left);
	if (tk->right != NULL)
		FUNC1(tk->right);
	FUNC0(tk);
}