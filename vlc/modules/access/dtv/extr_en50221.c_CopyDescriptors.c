
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int system_ids_t ;


 scalar_t__ CheckSystemID (int const*,int ) ;
 int GetWBE (int const*) ;
 int assert (int) ;
 int memcpy (int*,int const*,size_t) ;

__attribute__((used)) static size_t CopyDescriptors( const uint8_t *p_drdata, size_t i_drdata,
                               const system_ids_t *p_ids, uint8_t *p_dest )
{
    size_t i_total = 0;
    while( i_drdata > 0 )
    {
        assert( p_drdata[0] == 0x09 );
        uint8_t i_dr_len = p_drdata[1];
        uint16_t i_sysid = GetWBE( &p_drdata[2] );
        if( CheckSystemID( p_ids, i_sysid ) )
        {
            if( p_dest )
                memcpy( &p_dest[i_total], p_drdata, (size_t) i_dr_len + 2 );
            i_total += i_dr_len + 2;
        }
        i_drdata = i_drdata - i_dr_len - 2;
        p_drdata += i_dr_len + 2;
    }
    return i_total;
}
