#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_6__ {scalar_t__ Handle; int /*<<< orphan*/  Events; scalar_t__ Status; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PAFD_HANDLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  AFD_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ALL_ACCESS ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_AFD_POLL_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

PAFD_HANDLE FUNC5( PAFD_HANDLE HandleArray, UINT HandleCount ) {
    UINT i;
    NTSTATUS Status = STATUS_SUCCESS;

    PAFD_HANDLE FileObjects = FUNC1(NonPagedPool,
                                                    HandleCount * sizeof(AFD_HANDLE),
                                                    TAG_AFD_POLL_HANDLE);

    for( i = 0; FileObjects && i < HandleCount; i++ ) {
        FileObjects[i].Status = 0;
        FileObjects[i].Events = HandleArray[i].Events;
        FileObjects[i].Handle = 0;
        if( !HandleArray[i].Handle ) continue;
        if( FUNC2(Status) ) {
                Status = FUNC3
                    ( (PVOID)HandleArray[i].Handle,
                      FILE_ALL_ACCESS,
                      NULL,
                       KernelMode,
                       (PVOID*)&FileObjects[i].Handle,
                       NULL );
        }

        if( !FUNC2(Status) )
        {
            FUNC0(MIN_TRACE,("Failed to reference handles (0x%x)\n", Status));
            FileObjects[i].Handle = 0;
        }
    }

    if( !FUNC2(Status) ) {
        FUNC4( FileObjects, HandleCount );
        return NULL;
    }

    return FileObjects;
}