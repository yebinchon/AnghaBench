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
typedef  char WCHAR ;
typedef  int SYSKIND ;
typedef  int /*<<< orphan*/  LCID ;

/* Variables and functions */
#define  SYS_WIN16 130 
#define  SYS_WIN32 129 
#define  SYS_WIN64 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static WCHAR *FUNC3( LCID lcid, SYSKIND syskind, WCHAR *buffer )
{
    static const WCHAR LcidFormatW[] = {'%','l','x','\\',0};
    static const WCHAR win16W[] = {'w','i','n','1','6',0};
    static const WCHAR win32W[] = {'w','i','n','3','2',0};
    static const WCHAR win64W[] = {'w','i','n','6','4',0};

    FUNC1( buffer, LcidFormatW, lcid );
    switch(syskind)
    {
    case SYS_WIN16: FUNC2( buffer, win16W ); break;
    case SYS_WIN32: FUNC2( buffer, win32W ); break;
    case SYS_WIN64: FUNC2( buffer, win64W ); break;
    default:
        FUNC0("Typelib is for unsupported syskind %i\n", syskind);
        return NULL;
    }
    return buffer;
}