
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ UINT ;


 int LocalFree (scalar_t__) ;
 scalar_t__ lplpxdtaExtSelItems ;
 scalar_t__ uExtSelItems ;

VOID
ExtSelItemsInvalidate()
{
   if (uExtSelItems != (UINT)-1) {

      if (lplpxdtaExtSelItems) {
         LocalFree(lplpxdtaExtSelItems);
      }

      uExtSelItems = (UINT)-1;
   }
}
