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
struct huffman_code {int /*<<< orphan*/  table; int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct huffman_code*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct huffman_code *code)
{
    FUNC0(code->tree);
    FUNC0(code->table);
    FUNC1(code, 0, sizeof(*code));
}