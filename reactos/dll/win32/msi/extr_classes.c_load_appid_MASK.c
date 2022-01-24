#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ActivateAtStorage; int RunAsInteractiveUser; int /*<<< orphan*/  entry; void* DllSurrogate; void* ServiceParameters; void* LocalServer; int /*<<< orphan*/  RemoteServerName; void* AppID; } ;
struct TYPE_7__ {int /*<<< orphan*/  appids; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIAPPID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static MSIAPPID *FUNC8( MSIPACKAGE* package, MSIRECORD *row )
{
    LPCWSTR buffer;
    MSIAPPID *appid;

    /* fill in the data */

    appid = FUNC6( sizeof(MSIAPPID) );
    if (!appid)
        return NULL;
    
    appid->AppID = FUNC7( row, 1 );
    FUNC2("loading appid %s\n", FUNC3( appid->AppID ));

    buffer = FUNC0(row,2);
    FUNC4( package, buffer, &appid->RemoteServerName );

    appid->LocalServer = FUNC7(row,3);
    appid->ServiceParameters = FUNC7(row,4);
    appid->DllSurrogate = FUNC7(row,5);

    appid->ActivateAtStorage = !FUNC1(row,6);
    appid->RunAsInteractiveUser = !FUNC1(row,7);

    FUNC5( &package->appids, &appid->entry );
    
    return appid;
}