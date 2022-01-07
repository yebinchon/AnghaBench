
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
utf8_to_unicode(const char *string, size_t length)
{
 unsigned long unicode;

 switch (length) {
 case 1:
  unicode = string[0];
  break;
 case 2:
  unicode = (string[0] & 0x1f) << 6;
  unicode += (string[1] & 0x3f);
  break;
 case 3:
  unicode = (string[0] & 0x0f) << 12;
  unicode += ((string[1] & 0x3f) << 6);
  unicode += (string[2] & 0x3f);
  break;
 case 4:
  unicode = (string[0] & 0x0f) << 18;
  unicode += ((string[1] & 0x3f) << 12);
  unicode += ((string[2] & 0x3f) << 6);
  unicode += (string[3] & 0x3f);
  break;
 case 5:
  unicode = (string[0] & 0x0f) << 24;
  unicode += ((string[1] & 0x3f) << 18);
  unicode += ((string[2] & 0x3f) << 12);
  unicode += ((string[3] & 0x3f) << 6);
  unicode += (string[4] & 0x3f);
  break;
 case 6:
  unicode = (string[0] & 0x01) << 30;
  unicode += ((string[1] & 0x3f) << 24);
  unicode += ((string[2] & 0x3f) << 18);
  unicode += ((string[3] & 0x3f) << 12);
  unicode += ((string[4] & 0x3f) << 6);
  unicode += (string[5] & 0x3f);
  break;
 default:
  return 0;
 }



 return unicode > 0x10FFFF ? 0 : unicode;
}
