#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  GeoHashBits ;
typedef  TYPE_2__ GeoHashArea ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,TYPE_2__*) ; 

int FUNC2(const GeoHashBits hash, double *xy) {
    GeoHashArea area = {{0}};
    if (!xy || !FUNC1(hash, &area))
        return 0;
    return FUNC0(&area, xy);
}