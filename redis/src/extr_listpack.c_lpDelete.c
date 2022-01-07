
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP_REPLACE ;
 unsigned char* lpInsert (unsigned char*,int *,int ,unsigned char*,int ,unsigned char**) ;

unsigned char *lpDelete(unsigned char *lp, unsigned char *p, unsigned char **newp) {
    return lpInsert(lp,((void*)0),0,p,LP_REPLACE,newp);
}
