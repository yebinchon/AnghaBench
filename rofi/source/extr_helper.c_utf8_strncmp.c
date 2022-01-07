
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_NORMALIZE_ALL_COMPOSE ;
 int g_free (char*) ;
 int g_utf8_collate (char*,char*) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 char* g_utf8_offset_to_pointer (char*,size_t) ;

int utf8_strncmp ( const char* a, const char* b, size_t n )
{
    char *na = g_utf8_normalize ( a, -1, G_NORMALIZE_ALL_COMPOSE );
    char *nb = g_utf8_normalize ( b, -1, G_NORMALIZE_ALL_COMPOSE );
    *g_utf8_offset_to_pointer ( na, n ) = '\0';
    *g_utf8_offset_to_pointer ( nb, n ) = '\0';
    int r = g_utf8_collate ( na, nb );
    g_free ( na );
    g_free ( nb );
    return r;
}
