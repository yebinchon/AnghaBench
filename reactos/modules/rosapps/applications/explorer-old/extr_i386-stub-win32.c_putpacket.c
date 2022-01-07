
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char getDebugChar () ;
 char* hexchars ;
 int putDebugChar (char) ;

void
putpacket (char *buffer)
{
  unsigned char checksum;
  int count;
  char ch;


  do
 {
   putDebugChar ('$');
   checksum = 0;
   count = 0;

   while ((ch = buffer[count]) != 0)
  {
    putDebugChar (ch);
    checksum += ch;
    count += 1;
  }

   putDebugChar ('#');
   putDebugChar (hexchars[checksum >> 4]);
   putDebugChar (hexchars[checksum % 16]);

 }
  while (getDebugChar () != '+');
}
