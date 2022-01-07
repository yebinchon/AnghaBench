
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PSTR ;


 int sprintf (scalar_t__,char*,int) ;

__attribute__((used)) static PSTR FormatSizeBytes(ULONG size, PSTR buf)
{
 ULONG comma = 1;
 int len;

 while ((comma * 1000) < size) {
  comma *= 1000;
 }

 len = sprintf(buf, "%lu", size / comma);

 while (comma > 1) {
  size %= comma;
  comma /= 1000;
  len += sprintf(buf + len, ",%03lu", size / comma);
 }

 return buf;
}
