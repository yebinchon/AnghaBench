
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t __MIN (size_t,unsigned int) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

bool OMXCodec_IsBlacklisted( const char *p_name, unsigned int i_name_len )
{
    static const char *blacklisted_prefix[] = {

        "OMX.PV.",

        "OMX.google.",



        "OMX.ARICENT.",

        "OMX.SEC.WMV.Decoder",






        "OMX.SEC.MP3.Decoder",

        "OMX.MTK.VIDEO.DECODER.VC1",

        "OMX.SEC.vp8.dec",
        ((void*)0)
    };

    static const char *blacklisted_suffix[] = {


        ".secure",

        ".sw.dec",
        ((void*)0)
    };



    for( const char **pp_bl_prefix = blacklisted_prefix; *pp_bl_prefix != ((void*)0);
          pp_bl_prefix++ )
    {
        if( !strncmp( p_name, *pp_bl_prefix,
           __MIN( strlen(*pp_bl_prefix), i_name_len ) ) )
           return 1;
    }

    for( const char **pp_bl_suffix = blacklisted_suffix; *pp_bl_suffix != ((void*)0);
         pp_bl_suffix++ )
    {
       size_t i_suffix_len = strlen( *pp_bl_suffix );

       if( i_name_len > i_suffix_len
        && !strncmp( p_name + i_name_len - i_suffix_len, *pp_bl_suffix,
                     i_suffix_len ) )
           return 1;
    }

    return 0;
}
