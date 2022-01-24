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
struct effect_id {int /*<<< orphan*/  guid; } ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 unsigned int FUNC0 (struct effect_id const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct effect_id const* effect_conversion ; 

__attribute__((used)) static const struct effect_id* FUNC2(const GUID *guid)
{
    unsigned int i;
    for (i = 0; i < FUNC0(effect_conversion); i++)
        if (FUNC1(guid, effect_conversion[i].guid))
            return &effect_conversion[i];
    return NULL;
}