#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_1__ block_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text ; 

__attribute__((used)) static void FUNC12(bool write)
{
    FILE *stream;
    int res;

    stream = FUNC6 ("testfile.txt", "wb+e");
    FUNC0 (stream != NULL);

    res = FUNC7 (text, stream);
    FUNC0 (res != EOF);
    res = FUNC4 (stream);
    FUNC0 (res != EOF);

    block_t *block = FUNC1(FUNC5(stream), write);
    FUNC3 (stream);

    FUNC0 (block != NULL);
    FUNC0 (block->i_buffer == FUNC11 (text));
    FUNC0 (!FUNC8 (block->p_buffer, text, block->i_buffer));
    if (write)
        FUNC9(block->p_buffer, 'A', block->i_buffer);
    FUNC2 (block);

    FUNC10 ("testfile.txt");
}