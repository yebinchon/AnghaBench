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
typedef  int /*<<< orphan*/  vlc_tls_t ;
typedef  int /*<<< orphan*/  vlc_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  client_creds ; 
 int /*<<< orphan*/  server_creds ; 
 int /*<<< orphan*/  tls_echo ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char const* const*,char**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const* const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static vlc_tls_t *FUNC7(vlc_thread_t *th,
                             const char *const salpnv[],
                             const char *const calpnv[],
                             char **restrict alp)
{
    vlc_tls_t *socks[2];
    vlc_tls_t *server, *client;
    int val;

    val = FUNC6(PF_LOCAL, 0, socks);
    FUNC0(val == 0);

    server = FUNC4(server_creds, socks[0], salpnv);
    FUNC0(server != NULL);

    val = FUNC1(th, tls_echo, server, VLC_THREAD_PRIORITY_LOW);
    FUNC0(val == 0);

    client = FUNC3(client_creds, socks[1],
                                         "localhost", "vlc-tls-test",
                                         calpnv, alp);
    if (client == NULL)
    {
        FUNC5(socks[1]);
        FUNC2(*th, NULL);
        return NULL;
    }
    return client;
}