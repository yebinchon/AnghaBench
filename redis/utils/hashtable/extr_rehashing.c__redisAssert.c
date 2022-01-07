
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*,char*,int) ;

void _redisAssert(char *x, char *y, int l) {
    printf("ASSERT: %s %s %d\n",x,y,l);
    exit(1);
}
