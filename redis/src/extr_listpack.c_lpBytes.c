
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lpGetTotalBytes (unsigned char*) ;

uint32_t lpBytes(unsigned char *lp) {
    return lpGetTotalBytes(lp);
}
