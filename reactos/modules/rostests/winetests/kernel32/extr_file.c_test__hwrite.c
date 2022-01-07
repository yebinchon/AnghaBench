
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int ULONG ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HLOCAL ;
typedef scalar_t__ HFILE ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFileA (int ) ;
 int GetLastError () ;
 scalar_t__ HFILE_ERROR ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (char*) ;
 char* LocalLock (scalar_t__) ;
 int OF_READ ;
 int OF_READWRITE ;
 scalar_t__ _hread (scalar_t__,char*,scalar_t__) ;
 scalar_t__ _hwrite (scalar_t__,char*,int) ;
 scalar_t__ _lclose (scalar_t__) ;
 scalar_t__ _lcreat (int ,int ) ;
 scalar_t__ _lopen (int ,int ) ;
 int filename ;
 int ok (int,char*,...) ;
 char rand () ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void test__hwrite( void )
{
    HFILE filehandle;
    char buffer[10000];
    LONG bytes_read;
    LONG bytes_written;
    ULONG blocks;
    LONG i;
    char *contents;
    HLOCAL memory_object;
    char checksum[1];
    BOOL ret;

    filehandle = _lcreat( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        ok(0,"couldn't create file \"%s\" (err=%d)\n",filename,GetLastError());
        return;
    }

    ok( HFILE_ERROR != _hwrite( filehandle, "", 0 ), "_hwrite complains\n" );

    ok( HFILE_ERROR != _lclose(filehandle), "_lclose complains\n" );

    filehandle = _lopen( filename, OF_READ );

    bytes_read = _hread( filehandle, buffer, 1);

    ok( 0 == bytes_read, "file read size error\n" );

    ok( HFILE_ERROR != _lclose(filehandle), "_lclose complains\n" );

    filehandle = _lopen( filename, OF_READWRITE );

    bytes_written = 0;
    checksum[0] = '\0';
    srand( (unsigned)time( ((void*)0) ) );
    for (blocks = 0; blocks < 100; blocks++)
    {
        for (i = 0; i < (LONG)sizeof( buffer ); i++)
        {
            buffer[i] = rand( );
            checksum[0] = checksum[0] + buffer[i];
        }
        ok( HFILE_ERROR != _hwrite( filehandle, buffer, sizeof( buffer ) ), "_hwrite complains\n" );
        bytes_written = bytes_written + sizeof( buffer );
    }

    ok( HFILE_ERROR != _hwrite( filehandle, checksum, 1 ), "_hwrite complains\n" );
    bytes_written++;

    ok( HFILE_ERROR != _lclose( filehandle ), "_lclose complains\n" );

    memory_object = LocalAlloc( LPTR, bytes_written );

    ok( 0 != memory_object, "LocalAlloc fails. (Could be out of memory.)\n" );

    contents = LocalLock( memory_object );
    ok( ((void*)0) != contents, "LocalLock whines\n" );

    filehandle = _lopen( filename, OF_READ );

    contents = LocalLock( memory_object );
    ok( ((void*)0) != contents, "LocalLock whines\n" );

    ok( bytes_written == _hread( filehandle, contents, bytes_written), "read length differ from write length\n" );

    checksum[0] = '\0';
    i = 0;
    do
    {
        checksum[0] = checksum[0] + contents[i];
        i++;
    }
    while (i < bytes_written - 1);

    ok( checksum[0] == contents[i], "stored checksum differ from computed checksum\n" );

    ok( HFILE_ERROR != _lclose( filehandle ), "_lclose complains\n" );

    ret = DeleteFileA( filename );
    ok( ret != 0, "DeleteFile failed (%d)\n", GetLastError( ) );

    LocalFree( contents );
}
