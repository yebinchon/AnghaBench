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
typedef  int /*<<< orphan*/  xmlHashTablePtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void *
FUNC1(xmlHashTablePtr table, const xmlChar *prefix,
                const xmlChar *name, const xmlChar *prefix2,
	        const xmlChar *name2) {
    return(FUNC0(table, prefix, name, prefix2, name2, NULL, NULL));
}