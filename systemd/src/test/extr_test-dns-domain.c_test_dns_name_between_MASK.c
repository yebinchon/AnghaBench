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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int) ; 

__attribute__((used)) static void FUNC1(void) {
        /* see https://tools.ietf.org/html/rfc4034#section-6.1
           Note that we use "\033.z.example" in stead of "\001.z.example" as we
           consider the latter invalid */
        FUNC0("example", "a.example", "yljkjljk.a.example", true);
        FUNC0("a.example", "yljkjljk.a.example", "Z.a.example", true);
        FUNC0("yljkjljk.a.example", "Z.a.example", "zABC.a.EXAMPLE", true);
        FUNC0("Z.a.example", "zABC.a.EXAMPLE", "z.example", true);
        FUNC0("zABC.a.EXAMPLE", "z.example", "\\033.z.example", true);
        FUNC0("z.example", "\\033.z.example", "*.z.example", true);
        FUNC0("\\033.z.example", "*.z.example", "\\200.z.example", true);
        FUNC0("*.z.example", "\\200.z.example", "example", true);
        FUNC0("\\200.z.example", "example", "a.example", true);

        FUNC0("example", "a.example", "example", true);
        FUNC0("example", "example", "example", false);
        FUNC0("example", "example", "yljkjljk.a.example", false);
        FUNC0("example", "yljkjljk.a.example", "yljkjljk.a.example", false);
        FUNC0("hkps.pool.sks-keyservers.net", "_pgpkey-https._tcp.hkps.pool.sks-keyservers.net", "ipv4.pool.sks-keyservers.net", true);
}