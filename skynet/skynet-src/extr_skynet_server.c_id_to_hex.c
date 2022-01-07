
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
id_to_hex(char * str, uint32_t id) {
 int i;
 static char hex[16] = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F' };
 str[0] = ':';
 for (i=0;i<8;i++) {
  str[i+1] = hex[(id >> ((7-i) * 4))&0xf];
 }
 str[9] = '\0';
}
