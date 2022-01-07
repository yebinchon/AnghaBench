
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtv_delivery_t ;
struct TYPE_3__ {int delivery; int psz_scheme; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int DTV_DELIVERY_NONE ;
 TYPE_1__* delsys_mappings ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static dtv_delivery_t GetDeliveryByScheme(const char *psz_scheme)
{
    for (size_t i=0; i<ARRAY_SIZE(delsys_mappings); i++)
    {
        if(!strcasecmp(psz_scheme, delsys_mappings[i].psz_scheme))
            return delsys_mappings[i].delivery;
    }
    return DTV_DELIVERY_NONE;
}
