
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nSamplesPerSec; } ;
typedef TYPE_1__* LPWAVEFORMATEX ;
typedef int DWORD ;


 int bytes_to_samples (int,TYPE_1__*) ;

DWORD bytes_to_ms(DWORD bytes, LPWAVEFORMATEX pwfx)
{
    return bytes_to_samples(bytes, pwfx) * 1000 / pwfx->nSamplesPerSec;
}
