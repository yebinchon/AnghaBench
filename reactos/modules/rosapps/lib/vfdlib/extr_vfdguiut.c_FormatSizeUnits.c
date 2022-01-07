
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PSTR ;


 int FormatSizeBytes (int,int ) ;
 int sprintf (int ,char*,double,...) ;
 int strcat (int ,char const*) ;

__attribute__((used)) static PSTR FormatSizeUnits(ULONG size, PSTR buf)
{
 static const char *name[3] = {
  " KB", " MB", " GB"
 };
 int unit;
 double dsize;

 if (size < 1000) {

  sprintf(buf, "%u", size);



  return buf;
 }

 dsize = size;
 dsize /= 1024;
 unit = 0;

 while (unit < 2 && dsize >= 1000) {
  dsize /= 1000;
  unit++;
 }

 if (dsize < 10) {
  sprintf(buf, "%3.2f%s", dsize, name[unit]);
 }
 else if (dsize < 100) {
  sprintf(buf, "%3.1f%s", dsize, name[unit]);
 }
 else if (dsize < 1000) {
  sprintf(buf, "%3.0f%s", dsize, name[unit]);
 }
 else {
  FormatSizeBytes((ULONG)dsize, buf);
  strcat(buf, name[unit]);
 }

 return buf;
}
