#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_3__ {int type; } ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  TYPE_1__ MSICOLUMNINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int MSITYPE_STRING ; 

__attribute__((used)) static inline UINT FUNC2( MSIDATABASE *db, const MSICOLUMNINFO *col, UINT bytes_per_strref )
{
    if( FUNC1(col->type) )
        return 2;

    if( col->type & MSITYPE_STRING )
        return bytes_per_strref;

    if( (col->type & 0xff) <= 2)
        return 2;

    if( (col->type & 0xff) != 4 )
        FUNC0("Invalid column size %u\n", col->type & 0xff);

    return 4;
}