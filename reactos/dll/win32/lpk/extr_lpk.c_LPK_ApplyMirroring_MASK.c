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
typedef  int /*<<< orphan*/  UINT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int LAYOUT_RTL ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,char const*,void**,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16()
{
    static const WCHAR translationW[] = { '\\','V','a','r','F','i','l','e','I','n','f','o',
                                          '\\','T','r','a','n','s','l','a','t','i','o','n', 0 };
    static const WCHAR filedescW[] = { '\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
                                       '\\','%','0','4','x','%','0','4','x',
                                       '\\','F','i','l','e','D','e','s','c','r','i','p','t','i','o','n',0 };
    WCHAR *str, buffer[MAX_PATH];
#ifdef __REACTOS__
    DWORD i, version_layout = 0;
    UINT len;
#else
    DWORD i, len, version_layout = 0;
#endif
    DWORD user_lang = FUNC4();
    DWORD *languages;
    void *data = NULL;

    FUNC2( 0, buffer, MAX_PATH );
    if (!(len = FUNC0( buffer, NULL ))) goto done;
    if (!(data = FUNC6( FUNC3(), 0, len ))) goto done;
    if (!FUNC1( buffer, 0, len, data )) goto done;
    if (!FUNC13( data, translationW, (void **)&languages, &len ) || !len) goto done;

    len /= sizeof(DWORD);
    for (i = 0; i < len; i++) if (FUNC8(languages[i]) == user_lang) break;
    if (i == len)  /* try neutral language */
    for (i = 0; i < len; i++)
        if (FUNC8(languages[i]) == FUNC9( FUNC10(user_lang), SUBLANG_NEUTRAL )) break;
    if (i == len) i = 0;  /* default to the first one */

    FUNC15( buffer, filedescW, FUNC8(languages[i]), FUNC5(languages[i]) );
    if (!FUNC13( data, buffer, (void **)&str, &len )) goto done;
    FUNC12( "found description %s\n", FUNC14( str ));
    if (str[0] == 0x200e && str[1] == 0x200e) version_layout = LAYOUT_RTL;

done:
    FUNC7( FUNC3(), 0, data );
    FUNC11(version_layout);
}