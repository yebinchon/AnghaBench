
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zmalloc_get_smap_bytes_by_field (char*,int) ;

int THPGetAnonHugePagesSize(void) {
    return zmalloc_get_smap_bytes_by_field("AnonHugePages:",-1);
}
