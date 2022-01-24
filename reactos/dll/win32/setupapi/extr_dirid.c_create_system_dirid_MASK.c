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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_PROFILE ; 
#define  DIRID_APPS 145 
#define  DIRID_BOOT 144 
#define  DIRID_COLOR 143 
#define  DIRID_DRIVERS 142 
#define  DIRID_FONTS 141 
#define  DIRID_HELP 140 
#define  DIRID_INF 139 
#define  DIRID_LOADER 138 
#define  DIRID_NULL 137 
#define  DIRID_PRINTPROCESSOR 136 
#define  DIRID_SHARED 135 
#define  DIRID_SPOOL 134 
#define  DIRID_SPOOLDRIVERS 133 
#define  DIRID_SYSTEM 132 
#define  DIRID_SYSTEM16 131 
#define  DIRID_USERPROFILE 130 
#define  DIRID_VIEWERS 129 
#define  DIRID_WINDOWS 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 char const* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static const WCHAR *FUNC13( int dirid )
{
    static const WCHAR Null[]    = {0};
    static const WCHAR C_Root[]  = {'C',':','\\',0};
    static const WCHAR Drivers[] = {'\\','d','r','i','v','e','r','s',0};
    static const WCHAR Inf[]     = {'\\','i','n','f',0};
    static const WCHAR Help[]    = {'\\','h','e','l','p',0};
    static const WCHAR Fonts[]   = {'\\','f','o','n','t','s',0};
    static const WCHAR Viewers[] = {'\\','v','i','e','w','e','r','s',0};
    static const WCHAR System[]  = {'\\','s','y','s','t','e','m',0};
    static const WCHAR Spool[]   = {'\\','s','p','o','o','l',0};
    static const WCHAR UserProfile[] = {'U','S','E','R','P','R','O','F','I','L','E',0};

    WCHAR buffer[MAX_PATH+32], *str;
    int len;
    DWORD needed;

    switch(dirid)
    {
    case DIRID_NULL:
        return Null;
    case DIRID_WINDOWS:
        FUNC5( buffer, MAX_PATH );
        break;
    case DIRID_SYSTEM:
        FUNC4( buffer, MAX_PATH );
        break;
    case DIRID_DRIVERS:
        FUNC4( buffer, MAX_PATH );
        FUNC11( buffer, Drivers );
        break;
    case DIRID_INF:
        FUNC5( buffer, MAX_PATH );
        FUNC11( buffer, Inf );
        break;
    case DIRID_HELP:
        FUNC5( buffer, MAX_PATH );
        FUNC11( buffer, Help );
        break;
    case DIRID_FONTS:
        FUNC5( buffer, MAX_PATH );
        FUNC11( buffer, Fonts );
        break;
    case DIRID_VIEWERS:
        FUNC4( buffer, MAX_PATH );
        FUNC11( buffer, Viewers );
        break;
    case DIRID_APPS:
        return C_Root;  /* FIXME */
    case DIRID_SHARED:
        FUNC5( buffer, MAX_PATH );
        break;
    case DIRID_BOOT:
        return C_Root;  /* FIXME */
    case DIRID_SYSTEM16:
        FUNC5( buffer, MAX_PATH );
        FUNC11( buffer, System );
        break;
    case DIRID_SPOOL:
    case DIRID_SPOOLDRIVERS:  /* FIXME */
        FUNC5( buffer, MAX_PATH );
        FUNC11( buffer, Spool );
        break;
    case DIRID_USERPROFILE:
        if (FUNC1( UserProfile, buffer, MAX_PATH )) break;
        return FUNC8(CSIDL_PROFILE);
    case DIRID_LOADER:
        return C_Root;  /* FIXME */
    case DIRID_PRINTPROCESSOR:
        if (!FUNC2(NULL, NULL, 1, (LPBYTE)buffer, sizeof(buffer), &needed))
        {
            FUNC7( "cannot retrieve print processor directory\n" );
            return FUNC9();
        }
        break;
    case DIRID_COLOR:  /* FIXME */
    default:
        FUNC0( "unknown dirid %d\n", dirid );
        return FUNC9();
    }
    len = (FUNC12(buffer) + 1) * sizeof(WCHAR);
    if ((str = FUNC6( FUNC3(), 0, len ))) FUNC10( str, buffer, len );
    return str;
}