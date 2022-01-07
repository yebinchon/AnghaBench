
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int system_ids_t ;


 size_t CopyDescriptors (int const*,size_t,int const*,int *) ;

__attribute__((used)) static size_t GetCADSize( const system_ids_t *p_ids,
                          const uint8_t *p_drdata, size_t i_drdata )
{
    return CopyDescriptors( p_drdata, i_drdata, p_ids, ((void*)0) );
}
