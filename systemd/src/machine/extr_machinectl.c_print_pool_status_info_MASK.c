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
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  bs ;
struct TYPE_3__ {char* path; int /*<<< orphan*/  limit; int /*<<< orphan*/  usage; } ;
typedef  TYPE_1__ PoolStatusInfo ;

/* Variables and functions */
 int FORMAT_BYTES_MAX ; 
 char* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(sd_bus *bus, PoolStatusInfo *i) {
        char bs[FORMAT_BYTES_MAX], *s;

        if (i->path)
                FUNC1("\t    Path: %s\n", i->path);

        s = FUNC0(bs, sizeof(bs), i->usage);
        if (s)
                FUNC1("\t   Usage: %s\n", s);

        s = FUNC0(bs, sizeof(bs), i->limit);
        if (s)
                FUNC1("\t   Limit: %s\n", s);
}