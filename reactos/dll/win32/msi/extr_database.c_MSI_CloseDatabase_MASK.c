#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {scalar_t__ tempfolder; scalar_t__ deletefile; int /*<<< orphan*/  storage; scalar_t__ strings; scalar_t__ path; } ;
typedef  int /*<<< orphan*/  MSIOBJECTHDR ;
typedef  TYPE_1__ MSIDATABASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static VOID FUNC7( MSIOBJECTHDR *arg )
{
    MSIDATABASE *db = (MSIDATABASE *) arg;

    FUNC6(db->path);
    FUNC3( db );
    FUNC2( db );
    FUNC4( db );
    if (db->strings) FUNC5( db->strings );
    FUNC1( db->storage );
    if (db->deletefile)
    {
        FUNC0( db->deletefile );
        FUNC6( db->deletefile );
    }
    FUNC6( db->tempfolder );
}