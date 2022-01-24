#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_long ;
typedef  int u_char ;
struct TYPE_3__ {void* S_addr; } ;
struct in_addr {void* s_addr; TYPE_1__ S_un; } ;
struct TYPE_4__ {int /*<<< orphan*/  Byte; } ;
struct in6_addr {int /*<<< orphan*/  s6_addr; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  dst6 ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  addr4_Num ;
typedef  int /*<<< orphan*/  addr3_Num ;
typedef  int /*<<< orphan*/  addr2_Num ;
typedef  char* PCSTR ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 char const* STATUS_INVALID_PARAMETER ; 
 char const* WSAEAFNOSUPPORT ; 
 char const* WSAEINVAL ; 
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 char* FUNC5 (int,void*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    char dst[16];
    char dst6[64];
    const char * pdst;
    struct in_addr in;
    struct in6_addr in6;

    u_long addr0_Num = 0x00000000;
    PCSTR addr0_Str = "0.0.0.0";
    u_long addr1_Num = 0x20201015;
    PCSTR addr1_Str = "21.16.32.32";
    u_char addr2_Num[16] = {0,0,0,0,0,0,0,0,0,0,0xff,0xfe,0xcC,0x98,0xbd,0x74};
    PCSTR addr2_Str = "::fffe:cc98:bd74";
    u_char addr3_Num[16] = {0x20,0x30,0xa4,0xb1};
    PCSTR addr3_Str = "2030:a4b1::";
    u_char addr4_Num[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0xcC,0x98,0xbd,0x74};
    PCSTR addr4_Str = "::204.152.189.116";

    /* Test IPv4 addresses */
    in.s_addr = addr0_Num;

    pdst = FUNC2(*((struct in_addr*)&in.s_addr));
    FUNC4(pdst != NULL, "inet_ntoa failed %s\n", dst);
    FUNC4(!FUNC6(pdst, addr0_Str),"Address %s != %s\n", pdst, addr0_Str);

    /* Test that inet_ntoa and inet_ntop return the same value */
    in.S_un.S_addr = addr1_Num;
    pdst = FUNC2(*((struct in_addr*)&in.s_addr));
    FUNC4(pdst != NULL, "inet_ntoa failed %s\n", dst);
    FUNC4(!FUNC6(pdst, addr1_Str),"Address %s != %s\n", pdst, addr1_Str);

    /* InetNtop became available in Vista and Win2008 */
    if (!&pInetNtop)
    {
        FUNC7("InetNtop not present, not executing tests\n");
        return;
    }

    /* Second part of test */
    pdst = FUNC5(AF_INET,(void*)&in.s_addr, dst, sizeof(dst));
    FUNC4(pdst != NULL, "InetNtop failed %s\n", dst);
    FUNC4(!FUNC6(pdst, addr1_Str),"Address %s != %s\n", pdst, addr1_Str);

    /* Test invalid parm conditions */
    pdst = FUNC5(1, (void*)&in.s_addr, dst, sizeof(dst));
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == WSAEAFNOSUPPORT, "Should be WSAEAFNOSUPPORT\n");

    /* Test Null destination */
    pdst = NULL;
    pdst = FUNC5(AF_INET, (void*)&in.s_addr, NULL, sizeof(dst));
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test zero length passed */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET, (void*)&in.s_addr, dst, 0);
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test length one shorter than the address length */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET, (void*)&in.s_addr, dst, 6);
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test longer length is ok */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET, (void*)&in.s_addr, dst, sizeof(dst)+1);
    FUNC4(pdst != NULL, "The pointer should  be returned (%p)\n", pdst);
    FUNC4(!FUNC6(pdst, addr1_Str),"Address %s != %s\n", pdst, addr1_Str);

    /* Test the IPv6 addresses */

    /* Test an zero prefixed IPV6 address */
    FUNC3(in6.u.Byte, addr2_Num, sizeof(addr2_Num));
    pdst = FUNC5(AF_INET6,(void*)&in6.s6_addr, dst6, sizeof(dst6));
    FUNC4(pdst != NULL, "InetNtop failed %s\n", dst6);
    FUNC4(!FUNC6(pdst, addr2_Str),"Address %s != %s\n", pdst, addr2_Str);

    /* Test an zero suffixed IPV6 address */
    FUNC3(in6.s6_addr, addr3_Num, sizeof(addr3_Num));
    pdst = FUNC5(AF_INET6,(void*)&in6.s6_addr, dst6, sizeof(dst6));
    FUNC4(pdst != NULL, "InetNtop failed %s\n", dst6);
    FUNC4(!FUNC6(pdst, addr3_Str),"Address %s != %s\n", pdst, addr3_Str);

    /* Test the IPv6 address contains the IPv4 address in IPv4 notation */
    FUNC3(in6.s6_addr, addr4_Num, sizeof(addr4_Num));
    pdst = FUNC5(AF_INET6, (void*)&in6.s6_addr, dst6, sizeof(dst6));
    FUNC4(pdst != NULL, "InetNtop failed %s\n", dst6);
    FUNC4(!FUNC6(pdst, addr4_Str),"Address %s != %s\n", pdst, addr4_Str);

    /* Test invalid parm conditions */
    FUNC3(in6.u.Byte, addr2_Num, sizeof(addr2_Num));

    /* Test Null destination */
    pdst = NULL;
    pdst = FUNC5(AF_INET6, (void*)&in6.s6_addr, NULL, sizeof(dst6));
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test zero length passed */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET6, (void*)&in6.s6_addr, dst6, 0);
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test length one shorter than the address length */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET6, (void*)&in6.s6_addr, dst6, 16);
    FUNC4(pdst == NULL, "The pointer should not be returned (%p)\n", pdst);
    FUNC4(FUNC0() == STATUS_INVALID_PARAMETER || FUNC0() == WSAEINVAL /* Win7 */,
       "Should be STATUS_INVALID_PARAMETER or WSAEINVAL not 0x%x\n", FUNC0());

    /* Test longer length is ok */
    FUNC1(0);
    pdst = NULL;
    pdst = FUNC5(AF_INET6, (void*)&in6.s6_addr, dst6, 18);
    FUNC4(pdst != NULL, "The pointer should be returned (%p)\n", pdst);
}