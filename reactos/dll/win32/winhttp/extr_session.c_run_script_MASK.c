#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uc ;
struct AUTO_PROXY_SCRIPT_BUFFER {int dwStructSize; char* lpszScriptBuffer; int /*<<< orphan*/  dwScriptBufferSize; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  WINHTTP_PROXY_INFO ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int dwStructSize; int dwHostNameLength; int /*<<< orphan*/  lpszHostName; } ;
typedef  TYPE_1__ URL_COMPONENTSW ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct AUTO_PROXY_SCRIPT_BUFFER*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/  const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static BOOL FUNC10( char *script, DWORD size, const WCHAR *url, WINHTTP_PROXY_INFO *info )
{
    BOOL ret;
    char *result, *urlA;
    DWORD len_result;
    struct AUTO_PROXY_SCRIPT_BUFFER buffer;
    URL_COMPONENTSW uc;

    buffer.dwStructSize = sizeof(buffer);
    buffer.lpszScriptBuffer = script;
    buffer.dwScriptBufferSize = size;

    if (!(urlA = FUNC7( url ))) return FALSE;
    if (!(ret = FUNC2( 0, NULL, NULL, NULL, &buffer )))
    {
        FUNC4( urlA );
        return FALSE;
    }

    FUNC5( &uc, 0, sizeof(uc) );
    uc.dwStructSize = sizeof(uc);
    uc.dwHostNameLength = -1;

    if (FUNC3( url, 0, 0, &uc ))
    {
        char *hostnameA = FUNC8( uc.lpszHostName, uc.dwHostNameLength );

        if ((ret = FUNC1( urlA, FUNC9(urlA),
                        hostnameA, FUNC9(hostnameA), &result, &len_result )))
        {
            ret = FUNC6( result, info );
            FUNC4( result );
        }

        FUNC4( hostnameA );
    }
    FUNC4( urlA );
    return FUNC0( NULL, 0 );
}