
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PAPPHELP_CACHE_SERVICE_LOOKUP ;
typedef scalar_t__ NTSTATUS ;
typedef int APPHELPCACHESERVICECLASS ;


 scalar_t__ NtApphelpCacheControl (int ,int ) ;
 int xprintf (char*,unsigned int) ;

void CallApphelp(APPHELPCACHESERVICECLASS Service,
                PAPPHELP_CACHE_SERVICE_LOOKUP CacheEntry)
{
    NTSTATUS Status = NtApphelpCacheControl(Service, CacheEntry);
    xprintf("NtApphelpCacheControl returned 0x%x\n", (unsigned int)Status);
}
