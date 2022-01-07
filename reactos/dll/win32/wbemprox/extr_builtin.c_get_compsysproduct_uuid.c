
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; int member_1; } ;
typedef int buf ;
typedef char WCHAR ;


 int O_RDONLY ;
 int close (int) ;
 int compsysproduct_uuidW ;
 int gethostuuid (unsigned char*,struct timespec const*) ;
 char* heap_alloc (int) ;
 char* heap_strdupW (int ) ;
 int open (char*,int ) ;
 int read (int,unsigned char*,int) ;
 int sprintfW (char*,char const*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 char toupperW (unsigned char) ;

__attribute__((used)) static WCHAR *get_compsysproduct_uuid(void)
{
    int file;
    if ((file = open( "/var/lib/dbus/machine-id", O_RDONLY )) != -1)
    {
        unsigned char buf[32];
        if (read( file, buf, sizeof(buf) ) == sizeof(buf))
        {
            unsigned int i, j;
            WCHAR *ret, *p;

            close( file );
            if (!(p = ret = heap_alloc( 37 * sizeof(WCHAR) ))) return ((void*)0);
            for (i = 0, j = 0; i < 8; i++) p[i] = toupperW( buf[j++] );
            p[8] = '-';
            for (i = 9; i < 13; i++) p[i] = toupperW( buf[j++] );
            p[13] = '-';
            for (i = 14; i < 18; i++) p[i] = toupperW( buf[j++] );
            p[18] = '-';
            for (i = 19; i < 23; i++) p[i] = toupperW( buf[j++] );
            p[23] = '-';
            for (i = 24; i < 36; i++) p[i] = toupperW( buf[j++] );
            ret[i] = 0;
            return ret;
        }
        close( file );
    }

    return heap_strdupW( compsysproduct_uuidW );
}
