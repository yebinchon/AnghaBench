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
typedef  TYPE_1__* xmlRefPtr ;
typedef  int /*<<< orphan*/  xmlLinkPtr ;
struct TYPE_4__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(xmlLinkPtr lk) {
    xmlRefPtr ref = (xmlRefPtr)FUNC1(lk);
    if (ref == NULL) return;
    if (ref->value != NULL)
        FUNC0((xmlChar *)ref->value);
    if (ref->name != NULL)
        FUNC0((xmlChar *)ref->name);
    FUNC0(ref);
}