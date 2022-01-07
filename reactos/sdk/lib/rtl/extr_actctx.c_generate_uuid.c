
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Data3; int* Data4; } ;
typedef TYPE_1__ GUID ;


 int RtlUniform (int *) ;

__attribute__((used)) static void generate_uuid(ULONG *seed, GUID *guid)
{
    ULONG *ptr = (ULONG*)guid;
    int i;


    for (i = 0; i < sizeof(GUID)/sizeof(ULONG); i++, ptr++)
        *ptr = RtlUniform(seed);

    guid->Data3 &= 0x0fff;
    guid->Data3 |= (4 << 12);
    guid->Data4[0] &= 0x3f;
    guid->Data4[0] |= 0x80;
}
