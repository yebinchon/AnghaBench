
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lp_free (unsigned char*) ;

void lpFree(unsigned char *lp) {
    lp_free(lp);
}
