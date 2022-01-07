
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dfltname ;
typedef int bmname ;
struct TYPE_5__ {int host; } ;
struct TYPE_4__ {int bookmarkName; } ;
typedef TYPE_1__* BookmarkPtr ;


 int DefaultBookmarkName (char*,int,int ) ;
 int FGets (char*,int,int ) ;
 int STRNCPY (int ,char*) ;
 int fflush (int ) ;
 TYPE_2__ gConn ;
 int printf (char*,...) ;
 int stdin ;

int
PromptForBookmarkName(BookmarkPtr bmp)
{
 char dfltname[64];
 char bmname[64];

 DefaultBookmarkName(dfltname, sizeof(dfltname), gConn.host);
 if (dfltname[0] == '\0') {
  (void) printf("Enter a name for this bookmark: ");
 } else {
  (void) printf("Enter a name for this bookmark, or hit enter for \"%s\": ", dfltname);
 }
 fflush(stdin);
 (void) FGets(bmname, sizeof(bmname), stdin);
 if (bmname[0] != '\0') {
  (void) STRNCPY(bmp->bookmarkName, bmname);
  return (0);
 } else if (dfltname[0] != '\0') {
  (void) STRNCPY(bmp->bookmarkName, dfltname);
  return (0);
 }
 return (-1);
}
