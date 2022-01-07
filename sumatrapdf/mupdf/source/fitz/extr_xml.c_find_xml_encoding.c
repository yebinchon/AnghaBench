
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* fz_unicode_from_iso8859_1 ;
 unsigned short* fz_unicode_from_iso8859_7 ;
 unsigned short* fz_unicode_from_koi8u ;
 unsigned short* fz_unicode_from_windows_1250 ;
 unsigned short* fz_unicode_from_windows_1251 ;
 unsigned short* fz_unicode_from_windows_1252 ;
 scalar_t__ startswith (char*,char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static const unsigned short *find_xml_encoding(char *s)
{
 const unsigned short *table = ((void*)0);
 char *end, *xml, *enc;

 end = strchr(s, '>');
 if (end)
 {
  *end = 0;
  xml = strstr(s, "<?xml");
  if (xml)
  {
   enc = strstr(xml, "encoding=");
   if (enc)
   {
    enc += 10;
    if (startswith(enc, "iso-8859-1") || startswith(enc, "latin1"))
     table = fz_unicode_from_iso8859_1;
    else if (startswith(enc, "iso-8859-7") || startswith(enc, "greek"))
     table = fz_unicode_from_iso8859_7;
    else if (startswith(enc, "koi8"))
     table = fz_unicode_from_koi8u;
    else if (startswith(enc, "windows-1250"))
     table = fz_unicode_from_windows_1250;
    else if (startswith(enc, "windows-1251"))
     table = fz_unicode_from_windows_1251;
    else if (startswith(enc, "windows-1252"))
     table = fz_unicode_from_windows_1252;
   }
  }
  *end = '>';
 }

 return table;
}
