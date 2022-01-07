
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Data4; void* Data3; void* Data2; int Data1; } ;
typedef TYPE_1__ vlc_guid_t ;
typedef int uint8_t ;


 int GetDWLE (int const*) ;
 void* GetWLE (int const*) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static inline void ASF_GetGUID( vlc_guid_t *p_guid, const uint8_t *p_data )
{
    p_guid->Data1 = GetDWLE( p_data );
    p_guid->Data2 = GetWLE( p_data + 4);
    p_guid->Data3 = GetWLE( p_data + 6);
    memcpy( p_guid->Data4, p_data + 8, 8 );
}
