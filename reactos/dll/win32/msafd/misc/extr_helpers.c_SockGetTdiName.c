
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* Mapping; int (* WSHOpenSocket2 ) (int *,int *,int *,int ,int ,int ,int *,int ) ;int (* WSHOpenSocket ) (int *,int *,int *,int ,int *,int ) ;} ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
typedef scalar_t__* PWSTR ;
typedef scalar_t__* PWINSOCK_MAPPING ;
typedef int PVOID ;
typedef int PUNICODE_STRING ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int * PINT ;
typedef TYPE_2__* PHELPER_DATA ;
typedef int PDWORD ;
typedef scalar_t__ INT ;
typedef int GROUP ;
typedef int DWORD ;


 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,TYPE_1__*) ;
 int ERR (char*,scalar_t__*) ;
 int GlobalHeap ;
 int HELPER_DATA ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ NO_ERROR ;
 TYPE_1__ SockHelpersListHead ;
 scalar_t__ SockIsTripleInMapping (scalar_t__*,int ,int ,int ) ;
 scalar_t__ SockLoadHelperDll (scalar_t__*,scalar_t__*,TYPE_2__**) ;
 scalar_t__ SockLoadTransportList (scalar_t__**) ;
 scalar_t__ SockLoadTransportMapping (scalar_t__*,scalar_t__**) ;
 int TRACE (char*,scalar_t__*,...) ;
 int WARN (char*) ;
 scalar_t__ WSAEINVAL ;
 int stub1 (int *,int *,int *,int ,int *,int ) ;
 int stub2 (int *,int *,int *,int ,int ,int ,int *,int ) ;
 int stub3 (int *,int *,int *,int ,int *,int ) ;
 int stub4 (int *,int *,int *,int ,int ,int ,int *,int ) ;
 scalar_t__ wcslen (scalar_t__*) ;

INT
SockGetTdiName(
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
    PHELPER_DATA HelperData;
    PWSTR Transports;
    PWSTR Transport;
    PWINSOCK_MAPPING Mapping;
    PLIST_ENTRY Helpers;
    INT Status;

    TRACE("AddressFamily %p, SocketType %p, Protocol %p, Group %u, Flags %lx, TransportName %p, HelperDllContext %p, HelperDllData %p, Events %p\n",
        AddressFamily, SocketType, Protocol, Group, Flags, TransportName, HelperDllContext, HelperDllData, Events);


    for (Helpers = SockHelpersListHead.Flink;
         Helpers != &SockHelpersListHead;
         Helpers = Helpers->Flink ) {

        HelperData = CONTAINING_RECORD(Helpers, HELPER_DATA, Helpers);


        if (SockIsTripleInMapping (HelperData->Mapping,
                                   *AddressFamily,
                                   *SocketType,
                                   *Protocol)) {


            if (HelperData->WSHOpenSocket2 == ((void*)0) ) {


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


            *HelperDllData = HelperData;
            return NO_ERROR;
        }
    }


    Status = SockLoadTransportList(&Transports);


    if (Status) {
        WARN("Can't get transport list\n");
        return Status;
    }


    for (Transport = Transports;
         *Transports != 0;
         Transport += wcslen(Transport) + 1) {
        TRACE("Transport: %S\n", Transports);


        Status = SockLoadTransportMapping(Transport, &Mapping);


        if (Status) {
            ERR("Can't get mapping for %S\n", Transports);
            HeapFree(GlobalHeap, 0, Transports);
            return Status;
        }


        if (SockIsTripleInMapping(Mapping, *AddressFamily, *SocketType, *Protocol)) {


            Status = SockLoadHelperDll(Transport, Mapping, &HelperData);


            if (Status) {
                ERR("Can't load helper DLL for Transport %S.\n", Transport);
                HeapFree(GlobalHeap, 0, Transports);
                HeapFree(GlobalHeap, 0, Mapping);
                return Status;
            }


            if (HelperData->WSHOpenSocket2 == ((void*)0)) {

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


            *HelperDllData = HelperData;



            return NO_ERROR;
        }

        HeapFree(GlobalHeap, 0, Mapping);
    }
    HeapFree(GlobalHeap, 0, Transports);
    return WSAEINVAL;
}
