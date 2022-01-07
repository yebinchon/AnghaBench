
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;


 int msg_Err (int *,char*,char const*) ;
 int * stream_AccessNew (int *,int *,int *,int,char const*) ;
 int * stream_FilterAutoNew (int *) ;

stream_t *(vlc_stream_NewURL)(vlc_object_t *p_parent, const char *psz_url)
{
    if( !psz_url )
        return ((void*)0);

    stream_t *s = stream_AccessNew( p_parent, ((void*)0), ((void*)0), 0, psz_url );
    if( s == ((void*)0) )
        msg_Err( p_parent, "no suitable access module for `%s'", psz_url );
    else
        s = stream_FilterAutoNew(s);
    return s;
}
