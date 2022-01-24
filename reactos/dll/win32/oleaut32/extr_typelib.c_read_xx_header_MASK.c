#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mzh ;
struct TYPE_2__ {scalar_t__ e_magic; int /*<<< orphan*/  e_lfanew; } ;
typedef  char* LPSTR ;
typedef  TYPE_1__ IMAGE_DOS_HEADER ;
typedef  int /*<<< orphan*/  HFILE ;

/* Variables and functions */
 scalar_t__ IMAGE_DOS_SIGNATURE ; 
 int IMAGE_NT_SIGNATURE ; 
 int IMAGE_OS2_SIGNATURE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3( HFILE lzfd )
{
    IMAGE_DOS_HEADER mzh;
    char magic[3];

    FUNC1( lzfd, 0, SEEK_SET );
    if ( sizeof(mzh) != FUNC0( lzfd, (LPSTR)&mzh, sizeof(mzh) ) )
        return 0;
    if ( mzh.e_magic != IMAGE_DOS_SIGNATURE )
        return 0;

    FUNC1( lzfd, mzh.e_lfanew, SEEK_SET );
    if ( 2 != FUNC0( lzfd, magic, 2 ) )
        return 0;

    FUNC1( lzfd, mzh.e_lfanew, SEEK_SET );

    if ( magic[0] == 'N' && magic[1] == 'E' )
        return IMAGE_OS2_SIGNATURE;
    if ( magic[0] == 'P' && magic[1] == 'E' )
        return IMAGE_NT_SIGNATURE;

    magic[2] = '\0';
    FUNC2("Can't handle %s files.\n", magic );
    return 0;
}