#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* userName; void* password; TYPE_3__* appInfo; } ;
typedef  TYPE_1__ http_session_t ;
struct TYPE_6__ {TYPE_1__* session; } ;
typedef  TYPE_2__ http_request_t ;
struct TYPE_7__ {void* proxyUsername; void* proxyPassword; } ;
typedef  TYPE_3__ appinfo_t ;
typedef  void* LPWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static BOOL FUNC2( http_request_t *request, LPWSTR username,
                                      LPWSTR password, BOOL proxy )
{
    http_session_t *session = request->session;
    LPWSTR p, q;

    p = FUNC1(username);
    if( !p )
        return FALSE;

    q = FUNC1(password);
    if( !q )
    {
        FUNC0(p);
        return FALSE;
    }

    if (proxy)
    {
        appinfo_t *hIC = session->appInfo;

        FUNC0(hIC->proxyUsername);
        hIC->proxyUsername = p;

        FUNC0(hIC->proxyPassword);
        hIC->proxyPassword = q;
    }
    else
    {
        FUNC0(session->userName);
        session->userName = p;

        FUNC0(session->password);
        session->password = q;
    }

    return TRUE;
}