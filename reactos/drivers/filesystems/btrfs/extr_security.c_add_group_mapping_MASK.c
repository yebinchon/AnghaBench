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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  void* uint32_t ;
struct TYPE_4__ {int revision; int elements; int* auth; void** nums; } ;
typedef  TYPE_1__ sid_header ;
struct TYPE_5__ {int /*<<< orphan*/  listentry; void* gid; TYPE_1__* sid; } ;
typedef  TYPE_2__ gid_map ;
typedef  char WCHAR ;
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,unsigned int,int) ; 
 int /*<<< orphan*/  gid_map_list ; 

void FUNC5(WCHAR* sidstring, ULONG sidstringlength, uint32_t gid) {
    unsigned int i, np;
    uint8_t numdashes;
    uint64_t val;
    ULONG sidsize;
    sid_header* sid;
    gid_map* gm;

    if (sidstringlength < 4 || sidstring[0] != 'S' || sidstring[1] != '-' || sidstring[2] != '1' || sidstring[3] != '-') {
        FUNC0("invalid SID\n");
        return;
    }

    sidstring = &sidstring[4];
    sidstringlength -= 4;

    numdashes = 0;
    for (i = 0; i < sidstringlength; i++) {
        if (sidstring[i] == '-') {
            numdashes++;
            sidstring[i] = 0;
        }
    }

    sidsize = 8 + (numdashes * 4);
    sid = FUNC1(PagedPool, sidsize, ALLOC_TAG);
    if (!sid) {
        FUNC0("out of memory\n");
        return;
    }

    sid->revision = 0x01;
    sid->elements = numdashes;

    np = 0;
    while (sidstringlength > 0) {
        val = 0;
        i = 0;
        while (sidstring[i] != '-' && i < sidstringlength) {
            if (sidstring[i] >= '0' && sidstring[i] <= '9') {
                val *= 10;
                val += sidstring[i] - '0';
            } else
                break;

            i++;
        }

        i++;
        FUNC4("val = %u, i = %u, ssl = %u\n", (uint32_t)val, i, sidstringlength);

        if (np == 0) {
            sid->auth[0] = (uint8_t)((val & 0xff0000000000) >> 40);
            sid->auth[1] = (uint8_t)((val & 0xff00000000) >> 32);
            sid->auth[2] = (uint8_t)((val & 0xff000000) >> 24);
            sid->auth[3] = (uint8_t)((val & 0xff0000) >> 16);
            sid->auth[4] = (uint8_t)((val & 0xff00) >> 8);
            sid->auth[5] = val & 0xff;
        } else
            sid->nums[np-1] = (uint32_t)val;

        np++;

        if (sidstringlength > i) {
            sidstringlength -= i;

            sidstring = &sidstring[i];
        } else
            break;
    }

    gm = FUNC1(PagedPool, sizeof(gid_map), ALLOC_TAG);
    if (!gm) {
        FUNC0("out of memory\n");
        FUNC2(sid);
        return;
    }

    gm->sid = sid;
    gm->gid = gid;

    FUNC3(&gid_map_list, &gm->listentry);
}