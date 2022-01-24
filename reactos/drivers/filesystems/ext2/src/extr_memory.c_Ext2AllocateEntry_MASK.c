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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  Ext2DentryLookasideList; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* Ext2Global ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dentry*,int) ; 
 int /*<<< orphan*/  PS_DENTRY ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int) ; 

struct dentry * FUNC3()
{
    struct dentry *de;

    de = (struct dentry *)FUNC0(
             &(Ext2Global->Ext2DentryLookasideList));
    if (!de) {
        return NULL;
    }

    FUNC2(de, sizeof(struct dentry));
    FUNC1(PS_DENTRY, de, sizeof(struct dentry));

    return de;
}