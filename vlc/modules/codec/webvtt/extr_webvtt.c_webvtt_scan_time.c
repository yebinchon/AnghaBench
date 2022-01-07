
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;


 int MakeTime (unsigned int*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,...) ;

bool webvtt_scan_time( const char *psz, vlc_tick_t *p_time )
{
    unsigned t[4];
    if( sscanf( psz, "%2u:%2u.%3u",
                      &t[1], &t[2], &t[3] ) == 3 )
    {
        t[0] = 0;
        *p_time = MakeTime( t );
        return 1;
    }
    else if( sscanf( psz, "%u:%2u:%2u.%3u",
                          &t[0], &t[1], &t[2], &t[3] ) == 4 )
    {
        *p_time = MakeTime( t );
        return 1;
    }
    else return 0;
}
