#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  szCRoot ; 
 int /*<<< orphan*/  szCostingComplete ; 
 int /*<<< orphan*/  szRootDrive ; 
 int /*<<< orphan*/  szZero ; 

__attribute__((used)) static UINT FUNC7(MSIPACKAGE *package)
{
    FUNC6( package->db, szCostingComplete, szZero, -1 );
    FUNC6( package->db, szRootDrive, szCRoot, -1 );

    FUNC1( package );
    FUNC4( package );
    FUNC5( package );
    FUNC0( package );
    FUNC3( package );
    FUNC2( package );

    return ERROR_SUCCESS;
}