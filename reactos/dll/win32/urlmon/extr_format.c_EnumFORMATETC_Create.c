
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int it; int fetc_cnt; TYPE_1__ IEnumFORMATETC_iface; void* fetc; } ;
typedef TYPE_1__ IEnumFORMATETC ;
typedef int FORMATETC ;
typedef TYPE_2__ EnumFORMATETC ;


 int EnumFORMATETCVtbl ;
 int URLMON_LockModule () ;
 void* heap_alloc (int) ;
 int memcpy (void*,int const*,int) ;

__attribute__((used)) static IEnumFORMATETC *EnumFORMATETC_Create(UINT cfmtetc, const FORMATETC *rgfmtetc, UINT it)
{
    EnumFORMATETC *ret = heap_alloc(sizeof(EnumFORMATETC));

    URLMON_LockModule();

    ret->IEnumFORMATETC_iface.lpVtbl = &EnumFORMATETCVtbl;
    ret->ref = 1;
    ret->it = it;
    ret->fetc_cnt = cfmtetc;

    ret->fetc = heap_alloc(cfmtetc*sizeof(FORMATETC));
    memcpy(ret->fetc, rgfmtetc, cfmtetc*sizeof(FORMATETC));

    return &ret->IEnumFORMATETC_iface;
}
