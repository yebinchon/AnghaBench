#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ GeoHashRange ;
typedef  int /*<<< orphan*/  GeoHashBits ;
typedef  int /*<<< orphan*/  GeoHashArea ;

/* Variables and functions */
 int FUNC0 (TYPE_1__,TYPE_1__,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 

int FUNC2(const GeoHashBits hash, GeoHashArea *area) {
    GeoHashRange r[2] = {{0}};
    FUNC1(&r[0], &r[1]);
    return FUNC0(r[0], r[1], hash, area);
}