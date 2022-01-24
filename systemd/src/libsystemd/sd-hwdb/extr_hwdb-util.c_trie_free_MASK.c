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
struct trie {int /*<<< orphan*/  strings; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trie*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct trie *trie) {
        if (!trie)
                return;

        FUNC2(trie->root);
        FUNC1(trie->strings);
        FUNC0(trie);
}