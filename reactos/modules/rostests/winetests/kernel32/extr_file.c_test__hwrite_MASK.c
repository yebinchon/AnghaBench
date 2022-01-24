#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
typedef  int ULONG ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HLOCAL ;
typedef  scalar_t__ HFILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HFILE_ERROR ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  OF_READWRITE ; 
 scalar_t__ FUNC5 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 char FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14( void )
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

    filehandle = FUNC8( filename, 0 );
    if (filehandle == HFILE_ERROR)
    {
        FUNC10(0,"couldn't create file \"%s\" (err=%d)\n",filename,FUNC1());
        return;
    }

    FUNC10( HFILE_ERROR != FUNC6( filehandle, "", 0 ), "_hwrite complains\n" );

    FUNC10( HFILE_ERROR != FUNC7(filehandle), "_lclose complains\n" );

    filehandle = FUNC9( filename, OF_READ );

    bytes_read = FUNC5( filehandle, buffer, 1);

    FUNC10( 0 == bytes_read, "file read size error\n" );

    FUNC10( HFILE_ERROR != FUNC7(filehandle), "_lclose complains\n" );

    filehandle = FUNC9( filename, OF_READWRITE );

    bytes_written = 0;
    checksum[0] = '\0';
    FUNC12( (unsigned)FUNC13( NULL ) );
    for (blocks = 0; blocks < 100; blocks++)
    {
        for (i = 0; i < (LONG)sizeof( buffer ); i++)
        {
            buffer[i] = FUNC11(  );
            checksum[0] = checksum[0] + buffer[i];
        }
        FUNC10( HFILE_ERROR != FUNC6( filehandle, buffer, sizeof( buffer ) ), "_hwrite complains\n" );
        bytes_written = bytes_written + sizeof( buffer );
    }

    FUNC10( HFILE_ERROR != FUNC6( filehandle, checksum, 1 ), "_hwrite complains\n" );
    bytes_written++;

    FUNC10( HFILE_ERROR != FUNC7( filehandle ), "_lclose complains\n" );

    memory_object = FUNC2( LPTR, bytes_written );

    FUNC10( 0 != memory_object, "LocalAlloc fails. (Could be out of memory.)\n" );

    contents = FUNC4( memory_object );
    FUNC10( NULL != contents, "LocalLock whines\n" );

    filehandle = FUNC9( filename, OF_READ );

    contents = FUNC4( memory_object );
    FUNC10( NULL != contents, "LocalLock whines\n" );

    FUNC10( bytes_written == FUNC5( filehandle, contents, bytes_written), "read length differ from write length\n" );

    checksum[0] = '\0';
    i = 0;
    do
    {
        checksum[0] = checksum[0] + contents[i];
        i++;
    }
    while (i < bytes_written - 1);

    FUNC10( checksum[0] == contents[i], "stored checksum differ from computed checksum\n" );

    FUNC10( HFILE_ERROR != FUNC7( filehandle ), "_lclose complains\n" );

    ret = FUNC0( filename );
    FUNC10( ret != 0, "DeleteFile failed (%d)\n", FUNC1(  ) );

    FUNC3( contents );
}