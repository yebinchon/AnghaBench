
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int sscanf (char const*,char*,int*,int*) ;

__attribute__((used)) static inline int vobsub_size_parse( const char *psz_buf,
                                     int *pi_original_frame_width,
                                     int *pi_original_frame_height )
{
    int w, h;
    if( sscanf( psz_buf, "size: %dx%d", &w, &h ) == 2 )
    {
        *pi_original_frame_width = w;
        *pi_original_frame_height = h;
        return VLC_SUCCESS;
    }
    else
    {
        return VLC_EGENERIC;
    }
}
