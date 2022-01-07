
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ force; } ;
struct TYPE_7__ {TYPE_1__ obj; } ;
typedef TYPE_2__ vlc_va_t ;
struct decoders {scalar_t__ deviceID; scalar_t__ cmd; scalar_t__ driverBuild; int ** decoder_list; } ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ vendor; struct decoders* devices; } ;
typedef int GUID ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 scalar_t__ BLAnyDriver ;
 scalar_t__ BLBelowBuild ;
 scalar_t__ IsEqualGUID (int const*,int const*) ;
 TYPE_3__* gpu_blacklist ;

bool directx_va_canUseDecoder(vlc_va_t *va, UINT VendorId, UINT DeviceId, const GUID *pCodec, UINT driverBuild)
{
    if (va->obj.force)
        return 1;

    for (size_t i=0; i<ARRAY_SIZE(gpu_blacklist); i++)
    {
        if (gpu_blacklist[i].vendor == VendorId)
        {
            const struct decoders *pDevice = gpu_blacklist[i].devices;
            while (pDevice->deviceID != 0)
            {
                if (pDevice->deviceID == DeviceId)
                {
                    const GUID **pGuid = pDevice->decoder_list;
                    while (*pGuid != ((void*)0))
                    {
                        if (IsEqualGUID(pCodec, *pGuid))
                        {
                            if (pDevice->cmd == BLAnyDriver)
                                return 0;
                            if (pDevice->cmd == BLBelowBuild && driverBuild < pDevice->driverBuild)
                                return 0;
                            break;
                        }
                        pGuid++;
                    }
                    return 1;
                }
                pDevice++;
            }
            break;
        }
    }

    return 1;
}
