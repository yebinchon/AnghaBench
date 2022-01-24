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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_access, access_sys_t *p_sys,
                         const char *psz_user, const char *psz_pwd,
                         bool *p_logged )
{
    int i_answer;

    /* Send credentials over channel */
    if( FUNC3( p_access, p_sys, "USER %s", psz_user ) < 0 ||
        FUNC2( p_access, p_sys, &i_answer, NULL ) < 0 )
        return -1;

    switch( i_answer / 100 )
    {
        case 2:
            /* X.509 auth successful after AUTH TLS / RFC 2228 sec. 4 */
            if ( i_answer == 232 )
                FUNC4( p_access, "user accepted and authenticated" );
            else
                FUNC4( p_access, "user accepted" );
            break;
        case 3:
            FUNC4( p_access, "password needed" );

            if( FUNC3( p_access, p_sys, "PASS %s", psz_pwd ) < 0 ||
                FUNC2( p_access, p_sys, &i_answer, NULL ) < 0 )
                return -1;

            switch( i_answer / 100 )
            {
                case 2:
                    FUNC4( p_access, "password accepted" );
                    break;
                case 3:
                {
                    char *psz;
                    FUNC4( p_access, "account needed" );
                    psz = FUNC7( p_access, "ftp-account" );
                    if( FUNC3( p_access, p_sys, "ACCT %s",
                                         psz ) < 0 ||
                        FUNC2( p_access, p_sys, &i_answer, NULL ) < 0 )
                    {
                        FUNC1( psz );
                        return -1;
                    }
                    FUNC1( psz );

                    if( i_answer / 100 != 2 )
                    {
                        FUNC5( p_access, "account rejected" );
                        FUNC8( p_access,
                          FUNC0("Network interaction failed"),
                          "%s", FUNC0("Your account was rejected.") );
                        return -1;
                    }
                    FUNC4( p_access, "account accepted" );
                    break;
                }

                default:
                    FUNC6( p_access, "password rejected" );
                    *p_logged = false;
                    return 0;
            }
            break;
        default:
            FUNC6( p_access, "user rejected" );
            *p_logged = false;
            return 0;
    }

    *p_logged = true;
    return 0;
}