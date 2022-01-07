
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT16 ;
typedef size_t UINT ;
struct TYPE_2__ {size_t wMaxId; int nMapper; int * lpMlds; } ;
typedef int * LPWINE_MLD ;


 int TRACE (char*,size_t,size_t) ;
 TYPE_1__* llTypes ;

__attribute__((used)) static LPWINE_MLD MMDRV_GetByID(UINT uDevID, UINT type)
{
    TRACE("(%04x, %04x)\n", uDevID, type);
    if (uDevID < llTypes[type].wMaxId)
 return &llTypes[type].lpMlds[uDevID];
    if ((uDevID == (UINT16)-1 || uDevID == (UINT)-1) && llTypes[type].nMapper != -1)
 return &llTypes[type].lpMlds[-1];
    return ((void*)0);
}
