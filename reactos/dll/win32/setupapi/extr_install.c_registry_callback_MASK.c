#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct registry_callback_info {scalar_t__ delete; int /*<<< orphan*/  default_root; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_NULL ;
struct TYPE_3__ {int nLength; int /*<<< orphan*/ * lpSecurityDescriptor; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PCWSTR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * DotSecurity ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ FALSE ; 
 int FLG_ADDREG_DELREG_BIT ; 
 int FLG_ADDREG_OVERWRITEONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int MAX_INF_STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC21( HINF hinf, PCWSTR field, void *arg )
{
    struct registry_callback_info *info = arg;
    LPWSTR security_key, security_descriptor;
    INFCONTEXT context, security_context;
    PSECURITY_DESCRIPTOR sd = NULL;
    SECURITY_ATTRIBUTES security_attributes = { 0, };
    HKEY root_key, hkey;
    DWORD required;

    BOOL ok = FUNC9( hinf, field, NULL, &context );
    if (!ok)
        return TRUE;

    /* Check for .Security section */
    security_key = FUNC4( (FUNC20( field ) + FUNC20( DotSecurity )) * sizeof(WCHAR) + sizeof(UNICODE_NULL) );
    if (!security_key)
    {
        FUNC8(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }
    FUNC19( security_key, field );
    FUNC18( security_key, DotSecurity );
    ok = FUNC9( hinf, security_key, NULL, &security_context );
    FUNC3(security_key);
    if (ok)
    {
        if (!FUNC12( &security_context, NULL, NULL, NULL, NULL, 0, &required ))
            return FALSE;
        security_descriptor = FUNC4( required * sizeof(WCHAR) );
        if (!security_descriptor)
        {
            FUNC8(ERROR_NOT_ENOUGH_MEMORY);
            return FALSE;
        }
        if (!FUNC12( &security_context, NULL, NULL, NULL, security_descriptor, required, NULL ))
            return FALSE;
        ok = FUNC0( security_descriptor, SDDL_REVISION_1, &sd, NULL );
        FUNC3( security_descriptor );
        if (!ok)
            return FALSE;
        security_attributes.nLength = sizeof(SECURITY_ATTRIBUTES);
        security_attributes.lpSecurityDescriptor = sd;
    }

    for (ok = TRUE; ok; ok = FUNC10( &context, &context ))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];
        INT flags;

        /* get root */
        if (!FUNC13( &context, 1, buffer, sizeof(buffer)/sizeof(WCHAR), NULL ))
            continue;
        if (!(root_key = FUNC17( buffer, info->default_root )))
            continue;

        /* get key */
        if (!FUNC13( &context, 2, buffer, sizeof(buffer)/sizeof(WCHAR), NULL ))
            *buffer = 0;

        /* get flags */
        if (!FUNC11( &context, 4, &flags )) flags = 0;

        if (!info->delete)
        {
            if (flags & FLG_ADDREG_DELREG_BIT) continue;  /* ignore this entry */
        }
        else
        {
            if (!flags) flags = FLG_ADDREG_DELREG_BIT;
            else if (!(flags & FLG_ADDREG_DELREG_BIT)) continue;  /* ignore this entry */
        }

        if (info->delete || (flags & FLG_ADDREG_OVERWRITEONLY))
        {
            if (FUNC7( root_key, buffer, &hkey )) continue;  /* ignore if it doesn't exist */
        }
        else if (FUNC6( root_key, buffer, 0, NULL, 0, MAXIMUM_ALLOWED,
            sd ? &security_attributes : NULL, &hkey, NULL ))
        {
            FUNC1( "could not create key %p %s\n", root_key, FUNC15(buffer) );
            continue;
        }
        FUNC14( "key %p %s\n", root_key, FUNC15(buffer) );

        /* get value name */
        if (!FUNC13( &context, 3, buffer, sizeof(buffer)/sizeof(WCHAR), NULL ))
            *buffer = 0;

        /* and now do it */
        if (!FUNC16( hkey, buffer, &context, flags ))
        {
            if (hkey != root_key) FUNC5( hkey );
            if (sd) FUNC2( sd );
            return FALSE;
        }
        if (hkey != root_key) FUNC5( hkey );
    }
    if (sd) FUNC2( sd );
    return TRUE;
}