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
struct ether_addr {int /*<<< orphan*/  ether_addr_octet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct ether_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ether_addr const*,int) ; 

__attribute__((used)) static void FUNC2(void) {
        const struct ether_addr t[] = {
                { .ether_addr_octet = { 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff } },
                { .ether_addr_octet = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab } },
        };

        FUNC0("", 0, NULL);
        FUNC0("no:ta:ma:ca:dd:re", 0, NULL);
        FUNC0("aa:bb:cc:dd:ee:fx", 0, NULL);
        FUNC0("aa:bb:cc:dd:ee:ff", 0, &t[0]);
        FUNC0(" aa:bb:cc:dd:ee:ff", 0, &t[0]);
        FUNC0("aa:bb:cc:dd:ee:ff \t\n", 0, NULL);
        FUNC0("aa:bb:cc:dd:ee:ff \t\nxxx", 0, NULL);
        FUNC0("aa:bb:cc: dd:ee:ff", 0, NULL);
        FUNC0("aa:bb:cc:d d:ee:ff", 0, NULL);
        FUNC0("aa:bb:cc:dd:ee", 0, NULL);
        FUNC0("9:aa:bb:cc:dd:ee:ff", 0, NULL);
        FUNC0("aa:bb:cc:dd:ee:ff:gg", 0, NULL);
        FUNC0("aa:Bb:CC:dd:ee:ff", 0, &t[0]);
        FUNC0("01:23:45:67:89:aB", 0, &t[1]);
        FUNC0("1:23:45:67:89:aB", 0, &t[1]);
        FUNC0("aa-bb-cc-dd-ee-ff", 0, &t[0]);
        FUNC0("AA-BB-CC-DD-EE-FF", 0, &t[0]);
        FUNC0("01-23-45-67-89-ab", 0, &t[1]);
        FUNC0("aabb.ccdd.eeff", 0, &t[0]);
        FUNC0("0123.4567.89ab", 0, &t[1]);
        FUNC0("123.4567.89ab.", 0, NULL);
        FUNC0("aabbcc.ddeeff", 0, NULL);
        FUNC0("aabbccddeeff", 0, NULL);
        FUNC0("aabbccddee:ff", 0, NULL);
        FUNC0("012345.6789ab", 0, NULL);
        FUNC0("123.4567.89ab", 0, &t[1]);

        FUNC1("", t, 0);
        FUNC1("no:ta:ma:ca:dd:re", t, 0);
        FUNC1("aa:bb:cc:dd:ee:fx", t, 0);
        FUNC1("aa:bb:cc:dd:ee:ff", t, 1);
        FUNC1(" aa:bb:cc:dd:ee:ff", t, 1);
        FUNC1("aa:bb:cc:dd:ee:ff \t\n", t, 1);
        FUNC1("aa:bb:cc:dd:ee:ff \t\nxxx", t, 1);
        FUNC1("aa:bb:cc: dd:ee:ff", t, 0);
        FUNC1("aa:bb:cc:d d:ee:ff", t, 0);
        FUNC1("aa:bb:cc:dd:ee", t, 0);
        FUNC1("9:aa:bb:cc:dd:ee:ff", t, 0);
        FUNC1("aa:bb:cc:dd:ee:ff:gg", t, 0);
        FUNC1("aa:Bb:CC:dd:ee:ff", t, 1);
        FUNC1("01:23:45:67:89:aB", &t[1], 1);
        FUNC1("1:23:45:67:89:aB", &t[1], 1);
        FUNC1("aa-bb-cc-dd-ee-ff", t, 1);
        FUNC1("AA-BB-CC-DD-EE-FF", t, 1);
        FUNC1("01-23-45-67-89-ab", &t[1], 1);
        FUNC1("aabb.ccdd.eeff", t, 1);
        FUNC1("0123.4567.89ab", &t[1], 1);
        FUNC1("123.4567.89ab.", t, 0);
        FUNC1("aabbcc.ddeeff", t, 0);
        FUNC1("aabbccddeeff", t, 0);
        FUNC1("aabbccddee:ff", t, 0);
        FUNC1("012345.6789ab", t, 0);
        FUNC1("123.4567.89ab", &t[1], 1);

        FUNC1("123.4567.89ab aa:bb:cc:dd:ee:ff 01-23-45-67-89-ab aa:Bb:CC:dd:ee:ff", t, 2);
        FUNC1("123.4567.89ab aa:bb:cc:dd:ee:fx hogehoge 01-23-45-67-89-ab aaaa aa:Bb:CC:dd:ee:ff", t, 2);
}