#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {char* udp_address; int /*<<< orphan*/  udp_port; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int UDP_ADDRESS_LEN ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC8(stream_t *access, char *request_line) {
    access_sys_t *sys = access->p_sys;
    char *state;
    char *tok;
    int err;

    tok = FUNC7(request_line, ";", &state);
    if (tok == NULL || FUNC5(tok, "RTP/AVP", 7) != 0)
        return VLC_EGENERIC;

    tok = FUNC7(NULL, ";", &state);
    if (tok == NULL || FUNC5(tok, "multicast", 9) != 0)
        return 0;

    while ((tok = FUNC7(NULL, ";", &state)) != NULL) {
        if (FUNC5(tok, "destination=", 12) == 0) {
            FUNC1(sys->udp_address, tok + 12, FUNC0(FUNC4(tok + 12), UDP_ADDRESS_LEN - 1));
        } else if (FUNC5(tok, "port=", 5) == 0) {
            char port[6];
            char *end;

            FUNC2(port, 0x00, 6);
            FUNC1(port, tok + 5, FUNC0(FUNC4(tok + 5), 5));
            if ((end = FUNC6(port, "-")) != NULL)
                *end = '\0';
            err = FUNC3(port, &sys->udp_port);
            if (err)
                return err;
        }
    }

    return 0;
}