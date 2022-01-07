
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
pdf_guess_filter_length(int len, const char *filter)
{
 if (!strcmp(filter, "ASCIIHexDecode"))
  return len / 2;
 if (!strcmp(filter, "ASCII85Decode"))
  return len * 4 / 5;
 if (!strcmp(filter, "FlateDecode"))
  return len * 3;
 if (!strcmp(filter, "RunLengthDecode"))
  return len * 3;
 if (!strcmp(filter, "LZWDecode"))
  return len * 2;
 return len;
}
