
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const guid; } ;
typedef TYPE_1__ TLBGuid ;
typedef int GUID ;


 int const GUID_NULL ;

__attribute__((used)) static inline const GUID *TLB_get_guid_null(const TLBGuid *guid)
{
    return guid != ((void*)0) ? &guid->guid : &GUID_NULL;
}
