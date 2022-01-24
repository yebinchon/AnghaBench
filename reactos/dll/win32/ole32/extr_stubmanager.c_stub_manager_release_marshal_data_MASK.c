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
struct stub_manager {int dummy; } ;
struct ifstub {int flags; } ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IPID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int MSHLFLAGS_TABLESTRONG ; 
 int MSHLFLAGS_TABLEWEAK ; 
 int /*<<< orphan*/  FUNC0 (struct stub_manager*,int,int /*<<< orphan*/ ,int) ; 
 struct ifstub* FUNC1 (struct stub_manager*,int /*<<< orphan*/  const*) ; 

void FUNC2(struct stub_manager *m, ULONG refs, const IPID *ipid, BOOL tableweak)
{
    struct ifstub *ifstub;
 
    if (!(ifstub = FUNC1(m, ipid)))
        return;
 
    if (ifstub->flags & MSHLFLAGS_TABLEWEAK)
        refs = 0;
    else if (ifstub->flags & MSHLFLAGS_TABLESTRONG)
        refs = 1;

    FUNC0(m, refs, tableweak, !tableweak);
}