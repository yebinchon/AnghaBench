
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIP_ADDRESS ;
typedef int BOOLEAN ;


 scalar_t__ AddrIsBroadcastMatch (int ,int ) ;
 scalar_t__ AddrIsEqual (int ,int ) ;
 scalar_t__ AddrIsUnspecified (int ) ;
 int FALSE ;
 int TRUE ;

BOOLEAN AddrReceiveMatch(
   PIP_ADDRESS LocalAddress,
   PIP_ADDRESS RemoteAddress)
{
   if (AddrIsEqual(LocalAddress, RemoteAddress))
   {

       return TRUE;
   }

   if (AddrIsBroadcastMatch(LocalAddress, RemoteAddress))
   {

       return TRUE;
   }

   if (AddrIsUnspecified(LocalAddress))
   {

       return TRUE;
   }

   if (AddrIsUnspecified(RemoteAddress))
   {

       return TRUE;
   }

   return FALSE;
}
