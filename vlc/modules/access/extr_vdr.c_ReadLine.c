
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int EnsureUTF8 (char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;

__attribute__((used)) static bool ReadLine( char **ppsz_line, size_t *pi_size, FILE *p_file )
{
    ssize_t read = getline( ppsz_line, pi_size, p_file );

    if( read == -1 )
    {

        free( *ppsz_line );
        *ppsz_line = ((void*)0);
        return 0;
    }

    if( read > 0 && (*ppsz_line)[ read - 1 ] == '\n' )
        (*ppsz_line)[ read - 1 ] = '\0';
    EnsureUTF8( *ppsz_line );

    return 1;
}
