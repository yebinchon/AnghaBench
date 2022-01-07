
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Interface; } ;
struct TYPE_6__ {int MTU; } ;
typedef TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef scalar_t__ PIP_INTERFACE ;
typedef int PIP_ADDRESS ;


 int A2S (int ) ;
 int DEBUG_RCACHE ;
 int DEBUG_ROUTER ;
 int FALSE ;
 scalar_t__ FindOnLinkInterface (int ) ;
 int MIN_TRACE ;
 TYPE_2__* NBFindOrCreateNeighbor (scalar_t__,int ,int ) ;
 int PrintTree (int ) ;
 int RouteCache ;
 TYPE_2__* RouterGetRoute (int ) ;
 int TI_DbgPrint (int ,char*) ;

PNEIGHBOR_CACHE_ENTRY RouteGetRouteToDestination(PIP_ADDRESS Destination)
{
    PNEIGHBOR_CACHE_ENTRY NCE = ((void*)0);
    PIP_INTERFACE Interface;

    TI_DbgPrint(DEBUG_RCACHE, ("Called. Destination (0x%X)\n", Destination));

    TI_DbgPrint(DEBUG_RCACHE, ("Destination (%s)\n", A2S(Destination)));







    Interface = FindOnLinkInterface(Destination);
    if (Interface) {

 NCE = NBFindOrCreateNeighbor(Interface, Destination, FALSE);
    } else {

 NCE = RouterGetRoute(Destination);
    }

    if( NCE )
 TI_DbgPrint(DEBUG_ROUTER,("Interface->MTU: %d\n", NCE->Interface->MTU));

    return NCE;
}
