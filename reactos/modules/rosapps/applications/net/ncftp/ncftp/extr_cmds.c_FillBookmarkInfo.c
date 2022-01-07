
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ip; int hasUTIME; int hasPASV; int hasMDTM; int hasSIZE; int port; int acct; int pass; int user; int host; } ;
struct TYPE_4__ {char* name; char* user; char* pass; char* acct; char* lastIP; int hasUTIME; int hasPASV; int hasMDTM; int hasSIZE; int lastCall; int port; int dir; } ;
typedef TYPE_1__* BookmarkPtr ;


 int AbsoluteToRelative (int ,int,char*,int ,int ) ;
 scalar_t__ STREQ (int ,char*) ;
 int STRNCPY (char*,int ) ;
 TYPE_2__ gConn ;
 scalar_t__ gFirewallType ;
 int gRemoteCWD ;
 int gStartDir ;
 scalar_t__ kFirewallNotInUse ;
 int strlen (int ) ;
 int time (int *) ;

void
FillBookmarkInfo(BookmarkPtr bmp)
{
 char dir[160];

 (void) STRNCPY(bmp->name, gConn.host);
 if ((STREQ(gConn.user, "anonymous")) || (STREQ(gConn.user, "ftp"))) {
  bmp->user[0] = '\0';
  bmp->pass[0] = '\0';
  bmp->acct[0] = '\0';
 } else {
  (void) STRNCPY(bmp->user, gConn.user);
  (void) STRNCPY(bmp->pass, gConn.pass);
  (void) STRNCPY(bmp->acct, gConn.acct);
 }






 (void) STRNCPY(dir, gRemoteCWD);
 AbsoluteToRelative(bmp->dir, sizeof(bmp->dir), dir, gStartDir, strlen(gStartDir));
 bmp->port = gConn.port;
 (void) time(&bmp->lastCall);
 bmp->hasSIZE = gConn.hasSIZE;
 bmp->hasMDTM = gConn.hasMDTM;
 bmp->hasPASV = gConn.hasPASV;
 bmp->hasUTIME = gConn.hasUTIME;
 if (gFirewallType == kFirewallNotInUse)
  (void) STRNCPY(bmp->lastIP, gConn.ip);
}
