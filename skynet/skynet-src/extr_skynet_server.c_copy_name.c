
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLOBALNAME_LENGTH ;

__attribute__((used)) static void
copy_name(char name[GLOBALNAME_LENGTH], const char * addr) {
 int i;
 for (i=0;i<GLOBALNAME_LENGTH && addr[i];i++) {
  name[i] = addr[i];
 }
 for (;i<GLOBALNAME_LENGTH;i++) {
  name[i] = '\0';
 }
}
