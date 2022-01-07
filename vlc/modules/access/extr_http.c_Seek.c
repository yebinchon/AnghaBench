
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int stream_t ;


 int VLC_EGENERIC ;

__attribute__((used)) static int Seek( stream_t *p_access, uint64_t i_pos )
{
    (void) p_access; (void) i_pos;
    return VLC_EGENERIC;
}
