
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRNCAT (char*,char const* const) ;
 int STRNCPY (char*,char const* const) ;
 char* gOneTimeMessagesSeen ;
 int gPrefsDirty ;

void
SetSeenOneTimeMessage(const char *const msg)
{
 gPrefsDirty++;
 if (gOneTimeMessagesSeen[0] == '\0')
  STRNCPY(gOneTimeMessagesSeen, msg);
 else {
  STRNCAT(gOneTimeMessagesSeen, ",");
  STRNCAT(gOneTimeMessagesSeen, msg);
 }
}
