
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int free (int *) ;
 int memset (int *,int,int) ;

void testFree(void *ptr){
  if( ptr ){
    u8 *p = (u8*)ptr - 8;
    memset(p, 0x55, *(int*)p + 8);
    free(p);
  }
}
