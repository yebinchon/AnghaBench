
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int printf (char*,...) ;

void hexdump(uint8* p, uint32 len)
{
  uint8* line;
  int i;
  int thisline;
  int offset;

  line = p;
  offset = 0;
  while (offset < len)
  {
    printf("%04x ", offset);
    thisline = len - offset;
    if (thisline > 16)
      thisline = 16;

    for (i = 0; i < thisline; i++)
      printf("%02x ", line[i]);

    for (; i < 16; i++)
      printf("   ");

    for (i = 0; i < thisline; i++)
      printf("%c", (line[i] >= 0x20 && line[i] < 0x7f) ? line[i] : '.');

    printf("\n");
    offset += thisline;
    line += thisline;
  }
}
