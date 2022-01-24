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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  char BOOL ;

/* Variables and functions */
 char FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  volatile*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (void**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__* MessageTypeNames ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int SPY_MAX_MSGNUM ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char TRUE ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char FUNC12 (char*) ; 
 scalar_t__ indent_tls_index ; 
 int /*<<< orphan*/  message ; 
 scalar_t__ spy_exclude ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC15(void)
{
    int i;
    char buffer[1024];
    HKEY hkey;
    char *exclude;

    if (!FUNC9(message)) return FALSE;

    if (indent_tls_index == TLS_OUT_OF_INDEXES)
    {
        DWORD index = FUNC10();
        if (FUNC3((volatile LONG *) &indent_tls_index, index, TLS_OUT_OF_INDEXES ) != TLS_OUT_OF_INDEXES)
            FUNC11( index );
    }

    if (spy_exclude) return TRUE;
    exclude = FUNC1( FUNC0(), HEAP_ZERO_MEMORY, SPY_MAX_MSGNUM + 2 );

    /* @@ Wine registry key: HKCU\Software\Wine\Debug */
    if(!FUNC6(HKEY_CURRENT_USER, "Software\\Wine\\Debug", &hkey))
    {
        DWORD type, count = sizeof(buffer);

        buffer[0] = 0;
        if (!FUNC7(hkey, "SpyInclude", 0, &type, (LPBYTE) buffer, &count) &&
            FUNC13( buffer, "INCLUDEALL" ))
        {
            FUNC8("Include=%s\n", buffer );
            for (i = 0; i <= SPY_MAX_MSGNUM; i++)
                exclude[i] = (MessageTypeNames[i] && !FUNC14(buffer,MessageTypeNames[i]));
        }

        count = sizeof(buffer);
        buffer[0] = 0;
        if (!FUNC7(hkey, "SpyExclude", 0, &type, (LPBYTE) buffer, &count))
        {
            FUNC8("Exclude=%s\n", buffer );
            if (!FUNC13( buffer, "EXCLUDEALL" ))
                for (i = 0; i <= SPY_MAX_MSGNUM; i++) exclude[i] = TRUE;
            else
                for (i = 0; i <= SPY_MAX_MSGNUM; i++)
                    exclude[i] = (MessageTypeNames[i] && FUNC14(buffer,MessageTypeNames[i]));
        }

        count = sizeof(buffer);
        if(!FUNC7(hkey, "SpyExcludeDWP", 0, &type, (LPBYTE) buffer, &count))
            exclude[SPY_MAX_MSGNUM + 1] = FUNC12(buffer);

        FUNC5(hkey);
    }

    if (FUNC4( (void **)&spy_exclude, exclude, NULL ))
        FUNC2( FUNC0(), 0, exclude );

    return TRUE;
}