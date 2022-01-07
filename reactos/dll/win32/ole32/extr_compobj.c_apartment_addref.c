
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apartment {int oxid; int refs; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ InterlockedIncrement (int *) ;
 int TRACE (char*,int ,scalar_t__) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static DWORD apartment_addref(struct apartment *apt)
{
    DWORD refs = InterlockedIncrement(&apt->refs);
    TRACE("%s: before = %d\n", wine_dbgstr_longlong(apt->oxid), refs - 1);
    return refs;
}
