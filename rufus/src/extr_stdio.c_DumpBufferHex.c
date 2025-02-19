
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,...) ;
 size_t strlen (char*) ;
 int uprintf (char*,char*) ;

void DumpBufferHex(void *buf, size_t size)
{
 unsigned char* buffer = (unsigned char*)buf;
 size_t i, j, k;
 char line[80] = "";

 for (i=0; i<size; i+=16) {
  if (i!=0)
   uprintf("%s\n", line);
  line[0] = 0;
  sprintf(&line[strlen(line)], "  %08x  ", (unsigned int)i);
  for(j=0,k=0; k<16; j++,k++) {
   if (i+j < size) {
    sprintf(&line[strlen(line)], "%02x", buffer[i+j]);
   } else {
    sprintf(&line[strlen(line)], "  ");
   }
   sprintf(&line[strlen(line)], " ");
  }
  sprintf(&line[strlen(line)], " ");
  for(j=0,k=0; k<16; j++,k++) {
   if (i+j < size) {
    if ((buffer[i+j] < 32) || (buffer[i+j] > 126)) {
     sprintf(&line[strlen(line)], ".");
    } else {
     sprintf(&line[strlen(line)], "%c", buffer[i+j]);
    }
   }
  }
 }
 uprintf("%s\n", line);
}
