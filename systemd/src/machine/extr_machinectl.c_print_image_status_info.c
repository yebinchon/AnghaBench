
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int ts_relative ;
typedef int ts_absolute ;
struct TYPE_10__ {char const* type; char const* path; scalar_t__ usage; scalar_t__ usage_exclusive; scalar_t__ limit; scalar_t__ limit_exclusive; int mtime; int crtime; scalar_t__ read_only; scalar_t__ name; } ;
typedef TYPE_1__ sd_bus ;
typedef int bs_exclusive ;
typedef int bs ;
typedef TYPE_1__ ImageStatusInfo ;


 int FORMAT_BYTES_MAX ;
 int FORMAT_TIMESTAMP_MAX ;
 int FORMAT_TIMESTAMP_RELATIVE_MAX ;
 char* ansi_highlight_red () ;
 char* ansi_normal () ;
 int assert (TYPE_1__*) ;
 char* format_bytes (char*,int,scalar_t__) ;
 char* format_timestamp (char*,int,int ) ;
 char* format_timestamp_relative (char*,int,int ) ;
 int fputs (scalar_t__,int ) ;
 int print_image_hostname (TYPE_1__*,scalar_t__) ;
 int print_image_machine_id (TYPE_1__*,scalar_t__) ;
 int print_image_machine_info (TYPE_1__*,scalar_t__) ;
 int print_os_release (TYPE_1__*,char*,scalar_t__,char*) ;
 int printf (char*,char const*,...) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void print_image_status_info(sd_bus *bus, ImageStatusInfo *i) {
        char ts_relative[FORMAT_TIMESTAMP_RELATIVE_MAX];
        char ts_absolute[FORMAT_TIMESTAMP_MAX];
        char bs[FORMAT_BYTES_MAX];
        char bs_exclusive[FORMAT_BYTES_MAX];
        const char *s1, *s2, *s3, *s4;

        assert(bus);
        assert(i);

        if (i->name) {
                fputs(i->name, stdout);
                putchar('\n');
        }

        if (i->type)
                printf("\t    Type: %s\n", i->type);

        if (i->path)
                printf("\t    Path: %s\n", i->path);

        (void) print_image_hostname(bus, i->name);
        (void) print_image_machine_id(bus, i->name);
        (void) print_image_machine_info(bus, i->name);

        print_os_release(bus, "GetImageOSRelease", i->name, "\t      OS: ");

        printf("\t      RO: %s%s%s\n",
               i->read_only ? ansi_highlight_red() : "",
               i->read_only ? "read-only" : "writable",
               i->read_only ? ansi_normal() : "");

        s1 = format_timestamp_relative(ts_relative, sizeof(ts_relative), i->crtime);
        s2 = format_timestamp(ts_absolute, sizeof(ts_absolute), i->crtime);
        if (s1 && s2)
                printf("\t Created: %s; %s\n", s2, s1);
        else if (s2)
                printf("\t Created: %s\n", s2);

        s1 = format_timestamp_relative(ts_relative, sizeof(ts_relative), i->mtime);
        s2 = format_timestamp(ts_absolute, sizeof(ts_absolute), i->mtime);
        if (s1 && s2)
                printf("\tModified: %s; %s\n", s2, s1);
        else if (s2)
                printf("\tModified: %s\n", s2);

        s3 = format_bytes(bs, sizeof(bs), i->usage);
        s4 = i->usage_exclusive != i->usage ? format_bytes(bs_exclusive, sizeof(bs_exclusive), i->usage_exclusive) : ((void*)0);
        if (s3 && s4)
                printf("\t   Usage: %s (exclusive: %s)\n", s3, s4);
        else if (s3)
                printf("\t   Usage: %s\n", s3);

        s3 = format_bytes(bs, sizeof(bs), i->limit);
        s4 = i->limit_exclusive != i->limit ? format_bytes(bs_exclusive, sizeof(bs_exclusive), i->limit_exclusive) : ((void*)0);
        if (s3 && s4)
                printf("\t   Limit: %s (exclusive: %s)\n", s3, s4);
        else if (s3)
                printf("\t   Limit: %s\n", s3);
}
