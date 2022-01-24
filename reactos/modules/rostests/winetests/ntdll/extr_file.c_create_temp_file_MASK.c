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
typedef  int ULONG ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FILE_FLAG_DELETE_ON_CLOSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static HANDLE FUNC4( ULONG flags )
{
    char path[MAX_PATH], buffer[MAX_PATH];
    HANDLE handle;

    FUNC2( MAX_PATH, path );
    FUNC1( path, "foo", 0, buffer );
    handle = FUNC0(buffer, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                         flags | FILE_FLAG_DELETE_ON_CLOSE, 0);
    FUNC3( handle != INVALID_HANDLE_VALUE, "failed to create temp file\n" );
    return (handle == INVALID_HANDLE_VALUE) ? 0 : handle;
}