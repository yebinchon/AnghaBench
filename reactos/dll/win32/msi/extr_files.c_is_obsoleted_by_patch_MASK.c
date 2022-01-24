#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ disk_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  db; int /*<<< orphan*/  patches; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MSI_INITIAL_MEDIA_TRANSFORM_DISKID ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szInstalled ; 

__attribute__((used)) static BOOL FUNC3( MSIPACKAGE *package, MSIFILE *file )
{
    if (!FUNC1( &package->patches ) && file->disk_id < MSI_INITIAL_MEDIA_TRANSFORM_DISKID)
    {
        if (!FUNC2( package->db, szInstalled, 0 )) return FALSE;
        return TRUE;
    }
    if (FUNC0( package, file->disk_id )) return TRUE;
    return FALSE;
}