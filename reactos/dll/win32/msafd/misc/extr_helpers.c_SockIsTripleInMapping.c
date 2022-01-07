
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_5__ {size_t Rows; TYPE_1__* Mapping; } ;
struct TYPE_4__ {scalar_t__ Protocol; scalar_t__ SocketType; scalar_t__ AddressFamily; } ;
typedef TYPE_2__* PWINSOCK_MAPPING ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*) ;

BOOL
SockIsTripleInMapping(
    PWINSOCK_MAPPING Mapping,
    INT AddressFamily,
    INT SocketType,
    INT Protocol)
{

    ULONG Row;

    TRACE("Called, Mapping rows = %d\n", Mapping->Rows);


    for (Row = 0; Row < Mapping->Rows; Row++) {
        TRACE("Examining: row %d: AF %d type %d proto %d\n",
    Row,
    (INT)Mapping->Mapping[Row].AddressFamily,
    (INT)Mapping->Mapping[Row].SocketType,
    (INT)Mapping->Mapping[Row].Protocol);


        if (((INT)Mapping->Mapping[Row].AddressFamily == AddressFamily) &&
            ((INT)Mapping->Mapping[Row].SocketType == SocketType) &&
            ((INT)Mapping->Mapping[Row].Protocol == Protocol)) {
            TRACE("Found\n");
            return TRUE;
        }
    }
    WARN("Not found\n");
    return FALSE;
}
