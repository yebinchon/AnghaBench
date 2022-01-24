#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ htype; int dwInternalFlags; scalar_t__ hInternet; TYPE_1__* vtbl; int /*<<< orphan*/  entry; int /*<<< orphan*/  dwContext; int /*<<< orphan*/  refs; } ;
typedef  TYPE_2__ object_header_t ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  size_t UINT_PTR ;
struct TYPE_10__ {int /*<<< orphan*/  (* Destroy ) (TYPE_2__*) ;int /*<<< orphan*/  (* CloseConnection ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INET_OPENURL ; 
 int /*<<< orphan*/  INTERNET_STATUS_HANDLE_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WH_HFTPSESSION ; 
 scalar_t__ WH_HHTTPSESSION ; 
 scalar_t__ WH_HINIT ; 
 int /*<<< orphan*/  WININET_cs ; 
 int /*<<< orphan*/ ** handle_table ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t next_handle ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

BOOL FUNC10( object_header_t *info )
{
    ULONG refs = FUNC2(&info->refs);
    FUNC4( "object %p refcount = %d\n", info, refs );
    if( !refs )
    {
        FUNC6(info);
        if ( info->vtbl->CloseConnection )
        {
            FUNC4( "closing connection %p\n", info);
            info->vtbl->CloseConnection( info );
        }
        /* Don't send a callback if this is a session handle created with InternetOpenUrl */
        if ((info->htype != WH_HHTTPSESSION && info->htype != WH_HFTPSESSION)
            || !(info->dwInternalFlags & INET_OPENURL))
        {
            FUNC1(info, info->dwContext,
                                  INTERNET_STATUS_HANDLE_CLOSING, &info->hInternet,
                                  sizeof(HINTERNET));
        }
        FUNC4( "destroying object %p\n", info);
        if ( info->htype != WH_HINIT )
            FUNC7( &info->entry );
        info->vtbl->Destroy( info );

        if(info->hInternet) {
            UINT_PTR handle = (UINT_PTR)info->hInternet;

            FUNC0( &WININET_cs );

            handle_table[handle] = NULL;
            if(next_handle > handle)
                next_handle = handle;

            FUNC3( &WININET_cs );
        }

        FUNC5(info);
    }
    return TRUE;
}