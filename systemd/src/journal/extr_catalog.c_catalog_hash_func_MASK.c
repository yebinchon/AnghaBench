#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct siphash {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * language; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ CatalogItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct siphash*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const CatalogItem *i, struct siphash *state) {
        FUNC0(&i->id, sizeof(i->id), state);
        FUNC0(i->language, FUNC1(i->language), state);
}