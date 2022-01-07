
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FullName; int FontFamily; scalar_t__ OutlineRequiredSize; } ;
typedef TYPE_1__* PSHARED_FACE_CACHE ;


 int RtlInitUnicodeString (int *,int *) ;

__attribute__((used)) static void
SharedFaceCache_Init(PSHARED_FACE_CACHE Cache)
{
    Cache->OutlineRequiredSize = 0;
    RtlInitUnicodeString(&Cache->FontFamily, ((void*)0));
    RtlInitUnicodeString(&Cache->FullName, ((void*)0));
}
