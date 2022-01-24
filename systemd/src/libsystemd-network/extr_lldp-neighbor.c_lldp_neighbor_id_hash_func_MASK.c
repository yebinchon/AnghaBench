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
struct TYPE_3__ {int* chassis_id; int chassis_id_size; int* port_id; int port_id_size; } ;
typedef  TYPE_1__ LLDPNeighborID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,struct siphash*) ; 

__attribute__((used)) static void FUNC1(const LLDPNeighborID *id, struct siphash *state) {
        FUNC0(id->chassis_id, id->chassis_id_size, state);
        FUNC0(&id->chassis_id_size, sizeof(id->chassis_id_size), state);
        FUNC0(id->port_id, id->port_id_size, state);
        FUNC0(&id->port_id_size, sizeof(id->port_id_size), state);
}