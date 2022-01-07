
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef int uint8_t ;


 int VLC_FOURCC (int const,int const,int const,int const) ;

__attribute__((used)) static inline vlc_fourcc_t ReadFOURCC( const uint8_t *p )
{
    return VLC_FOURCC( p[0], p[1], p[2], p[3] );
}
