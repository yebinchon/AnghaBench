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
struct TYPE_2__ {int /*<<< orphan*/  seaf_dir; } ;
typedef  int /*<<< orphan*/  SeafileSessionInfo ;
typedef  int /*<<< orphan*/  GObject ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/ * FUNC1 () ; 

GObject *
FUNC2 (GError **error)
{
    SeafileSessionInfo *info;

    info = FUNC1 ();
    FUNC0 (info, "datadir", seaf->seaf_dir, NULL);
    return (GObject *) info;
}