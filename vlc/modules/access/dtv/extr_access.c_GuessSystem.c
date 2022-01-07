
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvb_device_t ;
typedef scalar_t__ dtv_delivery_t ;


 unsigned int DTV_DELGROUP_CABLE ;
 unsigned int DTV_DELGROUP_G2 ;
 unsigned int DTV_DELGROUP_SAT ;
 unsigned int DTV_DELGROUP_TERRES ;
 scalar_t__ DTV_DELIVERY_NONE ;
 scalar_t__ GetDeliveryByScheme (char const*) ;
 scalar_t__ GetSingleDelivery (unsigned int) ;
 unsigned int dvb_enum_systems (int *) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static dtv_delivery_t GuessSystem (const char *scheme, dvb_device_t *dev)
{

    dtv_delivery_t d = GetDeliveryByScheme(scheme);
    if(d != DTV_DELIVERY_NONE)
        return d;





    unsigned systems = dvb_enum_systems (dev);

    systems &= ~DTV_DELGROUP_G2;

    if( systems )
    {

        if (!strcasecmp (scheme, "cable"))
        {
            return GetSingleDelivery(systems & DTV_DELGROUP_CABLE);
        }
        else if (!strcasecmp (scheme, "satellite"))
        {
            return GetSingleDelivery(systems & DTV_DELGROUP_SAT);
        }
        else if (!strcasecmp (scheme, "terrestrial"))
        {
            return GetSingleDelivery(systems & DTV_DELGROUP_TERRES);
        }
        else
        {

            return GetSingleDelivery(systems);
        }
    }

    return DTV_DELIVERY_NONE;
}
