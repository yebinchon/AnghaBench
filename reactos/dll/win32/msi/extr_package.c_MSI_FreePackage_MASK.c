#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  localfile; scalar_t__ delete_on_close; int /*<<< orphan*/  log_file; TYPE_1__* db; scalar_t__ dialog; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  MSIOBJECTHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTALLMESSAGE_TERMINATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( MSIOBJECTHDR *arg)
{
    MSIPACKAGE *package = (MSIPACKAGE *)arg;

    FUNC4( package );

    if( package->dialog )
        FUNC5( package->dialog );

    FUNC7( &package->db->hdr );
    FUNC3(package);
    FUNC0( package->log_file );

    if (package->delete_on_close) FUNC1( package->localfile );
    FUNC6( package->localfile );
    FUNC2(NULL, INSTALLMESSAGE_TERMINATE, 0);
}