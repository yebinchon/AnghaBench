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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  IPPROTO_UDPLITE ; 
 char const* FUNC1 (scalar_t__) ; 

__attribute__((used)) static const char* FUNC2(int32_t i) {
        if (i == IPPROTO_IP)
                return "";

        if (!FUNC0(i, IPPROTO_UDPLITE, IPPROTO_SCTP))
                return NULL;

        return FUNC1(i);
}