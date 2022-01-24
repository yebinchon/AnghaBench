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
typedef  scalar_t__ uint_fast32_t ;

/* Variables and functions */
 void* CTX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ remote_error ; 

__attribute__((used)) static int FUNC1(void *ctx, uint_fast32_t last_seq, uint_fast32_t code)
{
    FUNC0(ctx == CTX);
    FUNC0(last_seq == 0);
    remote_error = code;
    return 0;
}