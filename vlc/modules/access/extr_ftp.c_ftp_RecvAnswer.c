
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int access_sys_t ;


 int free (char*) ;
 int ftp_RecvReply (int *,int *,char**,void (*) (void*,char const*),void*) ;

__attribute__((used)) static int ftp_RecvAnswer( vlc_object_t *obj, access_sys_t *sys,
                           int *restrict codep, char **restrict strp,
                           void (*cb)(void *, const char *), void *opaque )
{
    char *str;
    int val = ftp_RecvReply( obj, sys, &str, cb, opaque );
    if( (val / 100) == 1 )
    {
        free( str );
        val = ftp_RecvReply( obj, sys, &str, cb, opaque );
    }

    if( val >= 0 )
    {
        if( codep != ((void*)0) )
            *codep = val;
        if( strp != ((void*)0) )
            *strp = str;
        else
            free( str );
        val /= 100;
    }
    else
    {
        if( codep != ((void*)0) )
            *codep = 500;
        if( strp != ((void*)0) )
            *strp = ((void*)0);
    }
    return val;
}
