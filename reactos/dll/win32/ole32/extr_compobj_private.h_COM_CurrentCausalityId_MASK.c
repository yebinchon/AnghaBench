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
struct oletls {int /*<<< orphan*/  causality_id; } ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 struct oletls* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline GUID FUNC3(void)
{
    struct oletls *info = FUNC0();
    if (!info)
        return GUID_NULL;
    if (FUNC2(&info->causality_id, &GUID_NULL))
        FUNC1(&info->causality_id);
    return info->causality_id;
}