
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apartment {int oxid; } ;
typedef int OXID ;
typedef int HRESULT ;


 int S_OK ;

__attribute__((used)) static inline HRESULT apartment_getoxid(const struct apartment *apt, OXID *oxid)
{
    *oxid = apt->oxid;
    return S_OK;
}
