#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ts_relative ;
typedef  int /*<<< orphan*/  ts_absolute ;
struct TYPE_10__ {char const* type; char const* path; scalar_t__ usage; scalar_t__ usage_exclusive; scalar_t__ limit; scalar_t__ limit_exclusive; int /*<<< orphan*/  mtime; int /*<<< orphan*/  crtime; scalar_t__ read_only; scalar_t__ name; } ;
typedef  TYPE_1__ sd_bus ;
typedef  int /*<<< orphan*/  bs_exclusive ;
typedef  int /*<<< orphan*/  bs ;
typedef  TYPE_1__ ImageStatusInfo ;

/* Variables and functions */
 int FORMAT_BYTES_MAX ; 
 int FORMAT_TIMESTAMP_MAX ; 
 int FORMAT_TIMESTAMP_RELATIVE_MAX ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char*,int,scalar_t__) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC13(sd_bus *bus, ImageStatusInfo *i) {
        char ts_relative[FORMAT_TIMESTAMP_RELATIVE_MAX];
        char ts_absolute[FORMAT_TIMESTAMP_MAX];
        char bs[FORMAT_BYTES_MAX];
        char bs_exclusive[FORMAT_BYTES_MAX];
        const char *s1, *s2, *s3, *s4;

        FUNC2(bus);
        FUNC2(i);

        if (i->name) {
                FUNC6(i->name, stdout);
                FUNC12('\n');
        }

        if (i->type)
                FUNC11("\t    Type: %s\n", i->type);

        if (i->path)
                FUNC11("\t    Path: %s\n", i->path);

        (void) FUNC7(bus, i->name);
        (void) FUNC8(bus, i->name);
        (void) FUNC9(bus, i->name);

        FUNC10(bus, "GetImageOSRelease", i->name, "\t      OS: ");

        FUNC11("\t      RO: %s%s%s\n",
               i->read_only ? FUNC0() : "",
               i->read_only ? "read-only" : "writable",
               i->read_only ? FUNC1() : "");

        s1 = FUNC5(ts_relative, sizeof(ts_relative), i->crtime);
        s2 = FUNC4(ts_absolute, sizeof(ts_absolute), i->crtime);
        if (s1 && s2)
                FUNC11("\t Created: %s; %s\n", s2, s1);
        else if (s2)
                FUNC11("\t Created: %s\n", s2);

        s1 = FUNC5(ts_relative, sizeof(ts_relative), i->mtime);
        s2 = FUNC4(ts_absolute, sizeof(ts_absolute), i->mtime);
        if (s1 && s2)
                FUNC11("\tModified: %s; %s\n", s2, s1);
        else if (s2)
                FUNC11("\tModified: %s\n", s2);

        s3 = FUNC3(bs, sizeof(bs), i->usage);
        s4 = i->usage_exclusive != i->usage ? FUNC3(bs_exclusive, sizeof(bs_exclusive), i->usage_exclusive) : NULL;
        if (s3 && s4)
                FUNC11("\t   Usage: %s (exclusive: %s)\n", s3, s4);
        else if (s3)
                FUNC11("\t   Usage: %s\n", s3);

        s3 = FUNC3(bs, sizeof(bs), i->limit);
        s4 = i->limit_exclusive != i->limit ? FUNC3(bs_exclusive, sizeof(bs_exclusive), i->limit_exclusive) : NULL;
        if (s3 && s4)
                FUNC11("\t   Limit: %s (exclusive: %s)\n", s3, s4);
        else if (s3)
                FUNC11("\t   Limit: %s\n", s3);
}