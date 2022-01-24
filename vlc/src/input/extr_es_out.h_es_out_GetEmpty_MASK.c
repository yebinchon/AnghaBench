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
typedef  int /*<<< orphan*/  es_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_GET_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline bool FUNC2( es_out_t *p_out )
{
    bool b;
    int i_ret = FUNC1( p_out, ES_OUT_GET_EMPTY, &b );

    FUNC0( !i_ret );
    return b;
}