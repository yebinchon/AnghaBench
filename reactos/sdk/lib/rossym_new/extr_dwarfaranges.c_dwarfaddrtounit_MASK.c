#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int addrsize; TYPE_1__ aranges; } ;
struct TYPE_11__ {int addrsize; int /*<<< orphan*/ * p; int /*<<< orphan*/ * ep; TYPE_3__* d; } ;
typedef  TYPE_2__ DwarfBuf ;
typedef  TYPE_3__ Dwarf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nil ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int
FUNC7(Dwarf *d, ulong addr, ulong *unit)
{
    DwarfBuf b;
    int segsize, i;
    ulong len, id, off, base, size;
    uchar *start, *end;

    FUNC5(&b, 0, sizeof b);
    b.d = d;
    b.p = d->aranges.data;
    b.ep = b.p + d->aranges.len;

    while(b.p < b.ep){
        start = b.p;
        len = FUNC3(&b);
        if (!len) { b.ep = b.p - 4; return -1; }
        if((id = FUNC2(&b)) != 2){
            if(b.p == nil){
            underflow:
                FUNC6("buffer underflow reading address ranges header");
            }else
                FUNC6("bad dwarf version 0x%x in address ranges header", id);
            return -1;
        }
        off = FUNC3(&b);
        b.addrsize = FUNC1(&b);
        if(d->addrsize == 0)
            d->addrsize = b.addrsize;
        segsize = FUNC1(&b);
        FUNC0(segsize);	/* what am i supposed to do with this? */
        if(b.p == nil)
            goto underflow;
        if((i = (b.p-start) % (2*b.addrsize)) != 0)
            b.p += 2*b.addrsize - i;
        end = start+4+len;
        while(b.p!=nil && b.p<end){
            base = FUNC4(&b);
            size = FUNC4(&b);
            if (!size) continue;
            if(b.p == nil)
                goto underflow;
            if(base <= addr && addr < base+size){
                *unit = off;
                return 0;
            }
        }
        if(b.p == nil)
            goto underflow;
        b.p = end;
    }
    FUNC6("address 0x%lux is not listed in dwarf debugging symbols", addr);
    return -1;
}