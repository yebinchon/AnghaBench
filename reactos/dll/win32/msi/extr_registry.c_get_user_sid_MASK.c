#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_7__ {TYPE_1__ User; } ;
typedef  TYPE_2__ TOKEN_USER ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenUser ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static WCHAR *FUNC8(void)
{
    HANDLE token;
    DWORD size = 256;
    TOKEN_USER *user;
    WCHAR *ret;

    if (!FUNC5( FUNC2(), TOKEN_QUERY, &token )) return NULL;
    if (!(user = FUNC6( size )))
    {
        FUNC0( token );
        return NULL;
    }
    if (!FUNC4( token, TokenUser, user, size, &size ))
    {
        FUNC7( user );
        if (FUNC3() != ERROR_INSUFFICIENT_BUFFER || !(user = FUNC6( size )))
        {
            FUNC0( token );
            return NULL;
        }
        FUNC4( token, TokenUser, user, size, &size );
    }
    FUNC0( token );
    if (!FUNC1( user->User.Sid, &ret ))
    {
        FUNC7( user );
        return NULL;
    }
    FUNC7( user );
    return ret;
}