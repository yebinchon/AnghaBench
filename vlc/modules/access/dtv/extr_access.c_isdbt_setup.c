
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_3__ {void* time_interleaving; void* segment_count; int code_rate; int modulation; } ;
typedef TYPE_1__ isdbt_layer_t ;
typedef int dvb_device_t ;


 int dvb_set_isdbt (int *,int ,void*,int,void*,TYPE_1__*) ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int var_InheritCodeRate (int *,char*) ;
 void* var_InheritGuardInterval (int *) ;
 void* var_InheritInteger (int *,char*) ;
 int var_InheritModulation (int *,char*) ;

__attribute__((used)) static int isdbt_setup (vlc_object_t *obj, dvb_device_t *dev, uint64_t freq)
{
    isdbt_layer_t layers[3];
    uint32_t guard = var_InheritGuardInterval (obj);
    uint32_t bw = var_InheritInteger (obj, "dvb-bandwidth");
    int tx = var_InheritInteger (obj, "dvb-transmission");

    for (unsigned i = 0; i < 3; i++)
    {
        char varname[sizeof ("dvb-X-interleaving")];
        memcpy (varname, "dvb-X-", 6);
        varname[4] = 'a' + i;

        strcpy (varname + 6, "modulation");
        layers[i].modulation = var_InheritModulation (obj, varname);
        strcpy (varname + 6, "fec");
        layers[i].code_rate = var_InheritCodeRate (obj, varname);
        strcpy (varname + 6, "count");
        layers[i].segment_count = var_InheritInteger (obj, varname);
        strcpy (varname + 6, "interleaving");
        layers[i].time_interleaving = var_InheritInteger (obj, varname);
    }

    return dvb_set_isdbt (dev, freq, bw, tx, guard, layers);
}
