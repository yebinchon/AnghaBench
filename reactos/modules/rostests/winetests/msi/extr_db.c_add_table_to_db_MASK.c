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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static UINT FUNC4(MSIHANDLE hdb, LPCSTR table_data)
{
    UINT r;

    FUNC3("temp_file", table_data, (FUNC2(table_data) - 1) * sizeof(char));
    r = FUNC1(hdb, CURR_DIR, "temp_file");
    FUNC0("temp_file");

    return r;
}