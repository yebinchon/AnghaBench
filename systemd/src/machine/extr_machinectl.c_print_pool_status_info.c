
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
typedef int bs ;
struct TYPE_3__ {char* path; int limit; int usage; } ;
typedef TYPE_1__ PoolStatusInfo ;


 int FORMAT_BYTES_MAX ;
 char* format_bytes (char*,int,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void print_pool_status_info(sd_bus *bus, PoolStatusInfo *i) {
        char bs[FORMAT_BYTES_MAX], *s;

        if (i->path)
                printf("\t    Path: %s\n", i->path);

        s = format_bytes(bs, sizeof(bs), i->usage);
        if (s)
                printf("\t   Usage: %s\n", s);

        s = format_bytes(bs, sizeof(bs), i->limit);
        if (s)
                printf("\t   Limit: %s\n", s);
}
