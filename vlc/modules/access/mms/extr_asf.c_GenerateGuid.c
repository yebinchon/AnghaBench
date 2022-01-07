
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Data1; int * Data4; int Data3; int Data2; } ;
typedef TYPE_1__ vlc_guid_t ;


 int vlc_rand_bytes (int *,int) ;

void GenerateGuid ( vlc_guid_t *p_guid )
{
    p_guid->Data1 = 0xbabac001;
    vlc_rand_bytes(&p_guid->Data2, sizeof(p_guid->Data2));
    vlc_rand_bytes(&p_guid->Data3, sizeof(p_guid->Data3));
    vlc_rand_bytes(p_guid->Data4, sizeof(p_guid->Data4));
}
