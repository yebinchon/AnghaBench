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
struct vlc_thread {scalar_t__ cancel_event; int /*<<< orphan*/  killable; } ;
typedef  int ULONG ;
struct TYPE_3__ {int ulUser; void* hsemCur; } ;
typedef  TYPE_1__ SEMRECORD ;
typedef  void* HSEM ;
typedef  int /*<<< orphan*/  HMUX ;
typedef  scalar_t__ HEV ;

/* Variables and functions */
 int /*<<< orphan*/  DCMW_WAIT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int ERROR_INTERRUPT ; 
 int NO_ERROR ; 
 scalar_t__ NULLHANDLE ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_thread*) ; 
 struct vlc_thread* FUNC6 () ; 

__attribute__((used)) static ULONG FUNC7( HEV hev, ULONG ulTimeout )
{
    HMUX      hmux;
    SEMRECORD asr[ 2 ];
    ULONG     ulUser;
    int       n;
    ULONG     rc;

    struct vlc_thread *th = FUNC6 ();
    if( th == NULL || !th->killable )
    {
        /* Main thread - cannot be cancelled anyway
         * Alien thread - out of our control
         * Cancel disabled thread - ignore cancel
         */
        if( hev != NULLHANDLE )
            return FUNC3( hev, ulTimeout );

        return FUNC2( ulTimeout );
    }

    n = 0;
    if( hev != NULLHANDLE )
    {
        asr[ n ].hsemCur = ( HSEM )hev;
        asr[ n ].ulUser  = 0;
        n++;
    }
    asr[ n ].hsemCur = ( HSEM )th->cancel_event;
    asr[ n ].ulUser  = 0xFFFF;
    n++;

    FUNC1( NULL, &hmux, n, asr, DCMW_WAIT_ANY );
    rc = FUNC4( hmux, ulTimeout, &ulUser );
    FUNC0( hmux );
    if( rc )
        return rc;

    if( ulUser == 0xFFFF )
    {
        FUNC5( th );
        return ERROR_INTERRUPT;
    }

    return NO_ERROR;
}