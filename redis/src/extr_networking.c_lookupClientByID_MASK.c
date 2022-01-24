#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {int /*<<< orphan*/  clients_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/ * raxNotFound ; 
 TYPE_1__ server ; 

client *FUNC2(uint64_t id) {
    id = FUNC0(id);
    client *c = FUNC1(server.clients_index,(unsigned char*)&id,sizeof(id));
    return (c == raxNotFound) ? NULL : c;
}