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
typedef  scalar_t__ gboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,void*,int) ; 
 scalar_t__ FUNC1 (char const*,void*,int,scalar_t__) ; 

__attribute__((used)) static gboolean
FUNC2 (const char *id, void *data, int len,
                gboolean verify_id, gboolean is_json)
{
    if (is_json)
        return FUNC0 (id, data, len);
    else
        return FUNC1 (id, data, len, verify_id);
}