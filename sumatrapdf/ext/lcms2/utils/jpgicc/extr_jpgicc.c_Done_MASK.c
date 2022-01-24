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
typedef  scalar_t__ cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  Compressor ; 
 int /*<<< orphan*/  Decompressor ; 
 int /*<<< orphan*/  InFile ; 
 int /*<<< orphan*/  OutFile ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsBool FUNC3(void)
{
    FUNC2(&Decompressor);
    FUNC1(&Compressor);
    return FUNC0(InFile) + FUNC0(OutFile);

}