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
struct stub_manager {int /*<<< orphan*/  disconnected; int /*<<< orphan*/  oid; } ;
struct ifstub {int /*<<< orphan*/  chan; int /*<<< orphan*/  iface; scalar_t__ stubbuffer; int /*<<< orphan*/  iid; int /*<<< orphan*/  entry; int /*<<< orphan*/  ipid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifstub*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stub_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct stub_manager *m, struct ifstub *ifstub)
{
    FUNC6("m=%p, m->oid=%s, ipid=%s\n", m, FUNC9(m->oid), FUNC7(&ifstub->ipid));

    FUNC8(&ifstub->entry);

    if (!m->disconnected)
        FUNC5(&ifstub->iid, TRUE);

    if (ifstub->stubbuffer) FUNC3(ifstub->stubbuffer);
    FUNC4(ifstub->iface);
    FUNC2(ifstub->chan);

    FUNC1(FUNC0(), 0, ifstub);
}