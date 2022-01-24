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
struct TYPE_3__ {int /*<<< orphan*/  south_west; int /*<<< orphan*/  south_east; int /*<<< orphan*/  north_east; int /*<<< orphan*/  north_west; int /*<<< orphan*/  north; int /*<<< orphan*/  south; int /*<<< orphan*/  west; int /*<<< orphan*/  east; } ;
typedef  TYPE_1__ GeoHashNeighbors ;
typedef  int /*<<< orphan*/  GeoHashBits ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(const GeoHashBits *hash, GeoHashNeighbors *neighbors) {
    neighbors->east = *hash;
    neighbors->west = *hash;
    neighbors->north = *hash;
    neighbors->south = *hash;
    neighbors->south_east = *hash;
    neighbors->south_west = *hash;
    neighbors->north_east = *hash;
    neighbors->north_west = *hash;

    FUNC0(&neighbors->east, 1);
    FUNC1(&neighbors->east, 0);

    FUNC0(&neighbors->west, -1);
    FUNC1(&neighbors->west, 0);

    FUNC0(&neighbors->south, 0);
    FUNC1(&neighbors->south, -1);

    FUNC0(&neighbors->north, 0);
    FUNC1(&neighbors->north, 1);

    FUNC0(&neighbors->north_west, -1);
    FUNC1(&neighbors->north_west, 1);

    FUNC0(&neighbors->north_east, 1);
    FUNC1(&neighbors->north_east, 1);

    FUNC0(&neighbors->south_east, 1);
    FUNC1(&neighbors->south_east, -1);

    FUNC0(&neighbors->south_west, -1);
    FUNC1(&neighbors->south_west, -1);
}