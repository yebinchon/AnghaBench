#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cb; } ;
struct TYPE_14__ {TYPE_2__ mkid; } ;
struct TYPE_13__ {TYPE_5__* pidl; struct TYPE_13__* next; struct TYPE_13__* down; } ;
struct TYPE_10__ {scalar_t__ cb; } ;
struct TYPE_12__ {TYPE_1__ mkid; } ;
typedef  TYPE_3__* LPCITEMIDLIST ;
typedef  TYPE_4__ Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static Entry* FUNC1(Entry* dir, LPCITEMIDLIST pidl)
{
	Entry* entry;

	for(entry=dir->down; entry; entry=entry->next) {
		if (entry->pidl->mkid.cb == pidl->mkid.cb &&
			!FUNC0(entry->pidl, pidl, entry->pidl->mkid.cb))
			return entry;
	}

	return 0;
}