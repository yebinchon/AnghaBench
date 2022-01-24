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
struct hostent {int h_length; int** h_addr_list; } ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct hostent* FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  h_errno ; 
 scalar_t__ FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    struct hostent *he;
    char name[256];
    static BYTE loopback[] = {127, 0, 0, 1};
    static BYTE magic_loopback[] = {127, 12, 34, 56};
    int ret;

    ret = FUNC2(name, 256);
    FUNC4(ret == 0, "gethostname() call failed: %d\n", FUNC0());

    he = FUNC1("localhost");
    FUNC4(he != NULL, "gethostbyname(\"localhost\") failed: %d\n", h_errno);
    if(he)
    {
        if(he->h_length != 4)
        {
            FUNC5("h_length is %d, not IPv4, skipping test.\n", he->h_length);
            return;
        }

        FUNC4(FUNC3(he->h_addr_list[0], loopback, he->h_length) == 0,
           "gethostbyname(\"localhost\") returned %u.%u.%u.%u\n",
           he->h_addr_list[0][0], he->h_addr_list[0][1], he->h_addr_list[0][2],
           he->h_addr_list[0][3]);
    }

    if(FUNC6(name, "localhost") == 0)
    {
        FUNC5("hostname seems to be \"localhost\", skipping test.\n");
        return;
    }

    he = FUNC1(name);
    FUNC4(he != NULL, "gethostbyname(\"%s\") failed: %d\n", name, h_errno);
    if(he)
    {
        if(he->h_length != 4)
        {
            FUNC5("h_length is %d, not IPv4, skipping test.\n", he->h_length);
            return;
        }

        if (he->h_addr_list[0][0] == 127)
        {
            FUNC4(FUNC3(he->h_addr_list[0], magic_loopback, he->h_length) == 0,
               "gethostbyname(\"%s\") returned %u.%u.%u.%u not 127.12.34.56\n",
               name, he->h_addr_list[0][0], he->h_addr_list[0][1],
               he->h_addr_list[0][2], he->h_addr_list[0][3]);
        }
    }

    FUNC1("nonexistent.winehq.org");
    /* Don't check for the return value, as some braindead ISPs will kindly
     * resolve nonexistent host names to addresses of the ISP's spam pages. */
}