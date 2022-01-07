
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int multi_threaded; } ;
typedef int DWORD ;
typedef int BOOL ;
typedef TYPE_1__ APARTMENT ;


 int COINIT_APARTMENTTHREADED ;

__attribute__((used)) static inline BOOL apartment_is_model(const APARTMENT *apt, DWORD model)
{
    return (apt->multi_threaded == !(model & COINIT_APARTMENTTHREADED));
}
