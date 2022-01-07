
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HFILE ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFileA (int ) ;
 int GetLastError () ;
 scalar_t__ HFILE_ERROR ;
 scalar_t__ _hwrite (scalar_t__,int ,int ) ;
 scalar_t__ _lclose (scalar_t__) ;
 scalar_t__ _lcreat (int ,int ) ;
 int filename ;
 int ok (int,char*,...) ;
 int sillytext ;
 int strlen (int ) ;

__attribute__((used)) static void test__lclose( void )
{
    HFILE filehandle;
    BOOL ret;

    filehandle = _lcreat( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        ok(0,"couldn't create file \"%s\" (err=%d)\n",filename,GetLastError());
        return;
    }

    ok( HFILE_ERROR != _hwrite( filehandle, sillytext, strlen( sillytext ) ), "_hwrite complains\n" );

    ok( HFILE_ERROR != _lclose(filehandle), "_lclose complains\n" );

    ret = DeleteFileA( filename );
    ok( ret != 0, "DeleteFile failed (%d)\n", GetLastError( ) );
}
