
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;


 int zfree (int *) ;

void stats_free(stats *stats) {
    zfree(stats);
}
