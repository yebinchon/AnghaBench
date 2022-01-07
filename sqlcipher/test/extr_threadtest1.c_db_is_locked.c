
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,int) ;
 int usleep (int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int db_is_locked(void *NotUsed, int iCount){

  if( verbose ) printf("BUSY %s #%d\n", (char*)NotUsed, iCount);
  usleep(100);
  return iCount<25;
}
