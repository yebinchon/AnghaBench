#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int headersize; unsigned int len; int prevrawlen; int /*<<< orphan*/  encoding; int /*<<< orphan*/  prevrawlensize; } ;
typedef  TYPE_1__ zlentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char ZIP_END ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (unsigned char*,int /*<<< orphan*/ ) ; 

void FUNC12(unsigned char *zl) {
    unsigned char *p;
    int index = 0;
    zlentry entry;

    FUNC9(
        "{total bytes %d} "
        "{num entries %u}\n"
        "{tail offset %u}\n",
        FUNC7(FUNC0(zl)),
        FUNC6(FUNC2(zl)),
        FUNC7(FUNC3(zl)));
    p = FUNC1(zl);
    while(*p != ZIP_END) {
        FUNC10(p, &entry);
        FUNC9(
            "{\n"
                "\taddr 0x%08lx,\n"
                "\tindex %2d,\n"
                "\toffset %5ld,\n"
                "\thdr+entry len: %5u,\n"
                "\thdr len%2u,\n"
                "\tprevrawlen: %5u,\n"
                "\tprevrawlensize: %2u,\n"
                "\tpayload %5u\n",
            (long unsigned)p,
            index,
            (unsigned long) (p-zl),
            entry.headersize+entry.len,
            entry.headersize,
            entry.prevrawlen,
            entry.prevrawlensize,
            entry.len);
        FUNC9("\tbytes: ");
        for (unsigned int i = 0; i < entry.headersize+entry.len; i++) {
            FUNC9("%02x|",p[i]);
        }
        FUNC9("\n");
        p += entry.headersize;
        if (FUNC4(entry.encoding)) {
            FUNC9("\t[str]");
            if (entry.len > 40) {
                if (FUNC5(p,40,1,stdout) == 0) FUNC8("fwrite");
                FUNC9("...");
            } else {
                if (entry.len &&
                    FUNC5(p,entry.len,1,stdout) == 0) FUNC8("fwrite");
            }
        } else {
            FUNC9("\t[int]%lld", (long long) FUNC11(p,entry.encoding));
        }
        FUNC9("\n}\n");
        p += entry.len;
        index++;
    }
    FUNC9("{end}\n\n");
}