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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static UINT FUNC2( MSIHANDLE hdb )
{
    UINT r = FUNC1( hdb,
            "CREATE TABLE `Signature` ("
            "`Signature` CHAR(72) NOT NULL, "
            "`FileName` CHAR(255) NOT NULL, "
            "`MinVersion` CHAR(20), "
            "`MaxVersion` CHAR(20), "
            "`MinSize` LONG, "
            "`MaxSize` LONG, "
            "`MinDate` LONG, "
            "`MaxDate` LONG, "
            "`Languages` CHAR(255) "
            "PRIMARY KEY `Signature`)" );
    FUNC0(r == ERROR_SUCCESS, "Failed to create Signature table: %u\n", r);
    return r;
}