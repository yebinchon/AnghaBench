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
struct TYPE_4__ {char* psz_access; char* psz_name; int /*<<< orphan*/  psz_way; } ;
typedef  TYPE_1__ mrl_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static char *FUNC9( bool b_sout_display,
                                       const char *psz_url )
{
    mrl_t       mrl;
    char        *psz_chain;

    FUNC3( &mrl, psz_url );

    /* Check if the URLs goes to #rtp - otherwise we'll use #standard */
    static const char rtplist[] = "dccp\0sctp\0tcp\0udplite\0";
    for (const char *a = rtplist; *a; a += FUNC7 (a) + 1)
        if (FUNC5 (a, mrl.psz_access) == 0)
            goto rtp;

    if (FUNC5 (mrl.psz_access, "rtp") == 0)
    {
        char *port;
        /* For historical reasons, rtp:// means RTP over UDP */
        FUNC6 (mrl.psz_access, "udp");
rtp:
        if (mrl.psz_name[0] == '[')
        {
            port = FUNC8 (mrl.psz_name, "]:");
            if (port != NULL)
                port++;
        }
        else
            port = FUNC4 (mrl.psz_name, ':');
        if (port != NULL)
            *port++ = '\0'; /* erase ':' */

        if (FUNC0 (&psz_chain,
                      "rtp{mux=\"%s\",proto=\"%s\",dst=\"%s%s%s\"}",
                      mrl.psz_way, mrl.psz_access, mrl.psz_name,
                      port ? "\",port=\"" : "", port ? port : "") == -1)
            psz_chain = NULL;
    }
    else
    {
        /* Convert the URL to a basic standard sout chain */
        if (FUNC0 (&psz_chain,
                      "standard{mux=\"%s\",access=\"%s\",dst=\"%s\"}",
                      mrl.psz_way, mrl.psz_access, mrl.psz_name) == -1)
            psz_chain = NULL;
    }

    /* Duplicate and wrap if sout-display is on */
    if (psz_chain && b_sout_display)
    {
        char *tmp;
        if (FUNC0 (&tmp, "duplicate{dst=display,dst=%s}", psz_chain) == -1)
            tmp = NULL;
        FUNC1 (psz_chain);
        psz_chain = tmp;
    }

    FUNC2( &mrl );
    return psz_chain;
}