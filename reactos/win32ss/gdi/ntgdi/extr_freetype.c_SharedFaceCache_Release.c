
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FullName; int FontFamily; } ;
typedef TYPE_1__* PSHARED_FACE_CACHE ;


 int RtlFreeUnicodeString (int *) ;

__attribute__((used)) static void
SharedFaceCache_Release(PSHARED_FACE_CACHE Cache)
{
    RtlFreeUnicodeString(&Cache->FontFamily);
    RtlFreeUnicodeString(&Cache->FullName);
}
