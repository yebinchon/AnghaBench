#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* Mapping; int /*<<< orphan*/  (* WSHOpenSocket2 ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* WSHOpenSocket ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
typedef  scalar_t__* PWSTR ;
typedef  scalar_t__* PWINSOCK_MAPPING ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/ * PINT ;
typedef  TYPE_2__* PHELPER_DATA ;
typedef  int /*<<< orphan*/  PDWORD ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  GROUP ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  GlobalHeap ; 
 int /*<<< orphan*/  HELPER_DATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ NO_ERROR ; 
 TYPE_1__ SockHelpersListHead ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,TYPE_2__**) ; 
 scalar_t__ FUNC5 (scalar_t__**) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ WSAEINVAL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__*) ; 

INT
FUNC14(
    PINT AddressFamily,
    PINT SocketType,
    PINT Protocol,
    GROUP Group,
    DWORD Flags,
    PUNICODE_STRING TransportName,
    PVOID *HelperDllContext,
    PHELPER_DATA *HelperDllData,
    PDWORD Events)
{
    PHELPER_DATA        HelperData;
    PWSTR               Transports;
    PWSTR               Transport;
    PWINSOCK_MAPPING	Mapping;
    PLIST_ENTRY	        Helpers;
    INT                 Status;

    FUNC7("AddressFamily %p, SocketType %p, Protocol %p, Group %u, Flags %lx, TransportName %p, HelperDllContext %p, HelperDllData %p, Events %p\n",
        AddressFamily, SocketType, Protocol, Group, Flags, TransportName, HelperDllContext, HelperDllData, Events);

    /* Check in our Current Loaded Helpers */
    for (Helpers = SockHelpersListHead.Flink;
         Helpers != &SockHelpersListHead;
         Helpers = Helpers->Flink ) {

        HelperData = FUNC0(Helpers, HELPER_DATA, Helpers);

        /* See if this Mapping works for us */
        if (FUNC3 (HelperData->Mapping,
                                   *AddressFamily,
                                   *SocketType,
                                   *Protocol)) {

            /* Call the Helper Dll function get the Transport Name */
            if (HelperData->WSHOpenSocket2 == NULL ) {

                /* DLL Doesn't support WSHOpenSocket2, call the old one */
                HelperData->WSHOpenSocket(AddressFamily,
                                          SocketType,
                                          Protocol,
                                          TransportName,
                                          HelperDllContext,
                                          Events
                                          );
            } else {
                HelperData->WSHOpenSocket2(AddressFamily,
                                           SocketType,
                                           Protocol,
                                           Group,
                                           Flags,
                                           TransportName,
                                           HelperDllContext,
                                           Events
                                           );
            }

            /* Return the Helper Pointers */
            *HelperDllData = HelperData;
            return NO_ERROR;
        }
    }

    /* Get the Transports available */
    Status = FUNC5(&Transports);

    /* Check for error */
    if (Status) {
        FUNC8("Can't get transport list\n");
        return Status;
    }

    /* Loop through each transport until we find one that can satisfy us */
    for (Transport = Transports;
         *Transports != 0;
         Transport += FUNC13(Transport) + 1) {
        FUNC7("Transport: %S\n", Transports);

        /* See what mapping this Transport supports */
        Status = FUNC6(Transport, &Mapping);

        /* Check for error */
        if (Status) {
            FUNC1("Can't get mapping for %S\n", Transports);
            FUNC2(GlobalHeap, 0, Transports);
            return Status;
        }

        /* See if this Mapping works for us */
        if (FUNC3(Mapping, *AddressFamily, *SocketType, *Protocol)) {

            /* It does, so load the DLL associated with it */
            Status = FUNC4(Transport, Mapping, &HelperData);

            /* Check for error */
            if (Status) {
                FUNC1("Can't load helper DLL for Transport %S.\n", Transport);
                FUNC2(GlobalHeap, 0, Transports);
                FUNC2(GlobalHeap, 0, Mapping);
                return Status;
            }

            /* Call the Helper Dll function get the Transport Name */
            if (HelperData->WSHOpenSocket2 == NULL) {
                /* DLL Doesn't support WSHOpenSocket2, call the old one */
                HelperData->WSHOpenSocket(AddressFamily,
                                          SocketType,
                                          Protocol,
                                          TransportName,
                                          HelperDllContext,
                                          Events
                                          );
            } else {
                HelperData->WSHOpenSocket2(AddressFamily,
                                           SocketType,
                                           Protocol,
                                           Group,
                                           Flags,
                                           TransportName,
                                           HelperDllContext,
                                           Events
                                           );
            }

            /* Return the Helper Pointers */
            *HelperDllData = HelperData;
            /* We actually cache these ... the can't be freed yet */
            /*HeapFree(GlobalHeap, 0, Transports);*/
            /*HeapFree(GlobalHeap, 0, Mapping);*/
            return NO_ERROR;
        }

        FUNC2(GlobalHeap, 0, Mapping);
    }
    FUNC2(GlobalHeap, 0, Transports);
    return WSAEINVAL;
}