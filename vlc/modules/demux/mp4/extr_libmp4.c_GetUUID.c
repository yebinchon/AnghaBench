
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int UUID_t ;


 int memcpy (int *,int const*,int) ;

__attribute__((used)) static inline void GetUUID( UUID_t *p_uuid, const uint8_t *p_buff )
{
    memcpy( p_uuid, p_buff, 16 );
}
