
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int access_sys_t ;


 int free (char*) ;
 char* ftp_GetLine (int *,int *) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Err (int *,char*) ;
 int strncmp (char*,char*,int) ;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static int ftp_RecvReply( vlc_object_t *obj, access_sys_t *sys,
                          char **restrict strp,
                          void (*cb)(void *, const char *), void *opaque )
{
    char *resp = ftp_GetLine( obj, sys );
    if( resp == ((void*)0) )
        return -1;

    char *end;
    unsigned code = strtoul( resp, &end, 10 );
    if( (end - resp) != 3 || (*end != '-' && *end != ' ') )
    {
        msg_Err( obj, "malformatted response" );
        goto error;
    }
    msg_Dbg( obj, "received response: \"%s\"", resp );

    if( *end == '-' )
    {
        bool done;

        *end = ' ';
        do
        {
            char *line = ftp_GetLine( obj, sys );
            if( line == ((void*)0) )
                goto error;

            done = !strncmp( resp, line, 4 );
            if( !done )
                cb( opaque, line );
            free( line );
        }
        while( !done );
    }

    if( strp != ((void*)0) )
        *strp = resp;
    else
        free( resp );
    return code;
error:
    free( resp );
    return -1;
}
