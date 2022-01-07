
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {scalar_t__ dwBytesRecorded; int reserved; } ;
struct TYPE_5__ {scalar_t__ BytesCompleted; scalar_t__ BytesCommitted; } ;
typedef TYPE_1__* PWAVEHDR_EXTENSION ;
typedef TYPE_2__* PWAVEHDR ;


 int SND_ASSERT (TYPE_1__*) ;

VOID
SanitizeWaveHeader(
    PWAVEHDR Header)
{
    PWAVEHDR_EXTENSION Extension = (PWAVEHDR_EXTENSION) Header->reserved;
    SND_ASSERT( Extension );

    Header->dwBytesRecorded = 0;

    Extension->BytesCommitted = 0;
    Extension->BytesCompleted = 0;
}
