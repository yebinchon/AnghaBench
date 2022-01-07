
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cached_columns ;
 scalar_t__ cached_lines ;

void columns_lines_cache_reset(int signum) {
        cached_columns = 0;
        cached_lines = 0;
}
