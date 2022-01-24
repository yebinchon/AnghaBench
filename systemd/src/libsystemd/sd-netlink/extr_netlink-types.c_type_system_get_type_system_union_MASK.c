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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  NLTypeSystemUnion ;
typedef  int /*<<< orphan*/  NLTypeSystem ;
typedef  int /*<<< orphan*/  NLType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

int FUNC3(const NLTypeSystem *type_system, const NLTypeSystemUnion **ret, uint16_t type) {
        const NLType *nl_type;
        int r;

        FUNC0(ret);

        r = FUNC2(type_system, &nl_type, type);
        if (r < 0)
                return r;

        FUNC1(nl_type, ret);
        return 0;
}