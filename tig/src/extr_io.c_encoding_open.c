
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoding {scalar_t__ cd; struct encoding* next; int fromcode; } ;


 int ENCODING_UTF8 ;
 scalar_t__ ICONV_NONE ;
 struct encoding* calloc (int,int) ;
 struct encoding* encodings ;
 int free (struct encoding*) ;
 scalar_t__ iconv_open (int ,char const*) ;
 int strcasecmp (int ,char const*) ;
 size_t strlen (char const*) ;
 int strncpy (int ,char const*,size_t) ;

struct encoding *
encoding_open(const char *fromcode)
{
 struct encoding *encoding;
 size_t len = strlen(fromcode);

 if (!*fromcode)
  return ((void*)0);

 for (encoding = encodings; encoding; encoding = encoding->next) {
  if (!strcasecmp(encoding->fromcode, fromcode))
   return encoding;
 }

 encoding = calloc(1, sizeof(*encoding) + len);
 strncpy(encoding->fromcode, fromcode, len);
 encoding->cd = iconv_open(ENCODING_UTF8, fromcode);
 if (encoding->cd == ICONV_NONE) {
  free(encoding);
  return ((void*)0);
 }

 encoding->next = encodings;
 encodings = encoding;

 return encoding;
}
