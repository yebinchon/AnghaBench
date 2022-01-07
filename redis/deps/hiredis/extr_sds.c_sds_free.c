
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_free (void*) ;

void sds_free(void *ptr) { s_free(ptr); }
