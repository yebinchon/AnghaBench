
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int lua_State ;
typedef int FILE ;


 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int vlclua_io_file_read_line( lua_State *L, FILE* p_file )
{
    char* psz_line = ((void*)0);
    size_t i_buffer;
    ssize_t i_len = getline( &psz_line, &i_buffer, p_file );
    if ( i_len == -1 )
        return 0;
    if( psz_line[i_len - 1] == '\n' )
        psz_line[--i_len] = 0;
    lua_pushstring( L, psz_line );
    free( psz_line );
    return 1;
}
