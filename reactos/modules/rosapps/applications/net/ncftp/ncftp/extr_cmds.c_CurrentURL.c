
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bm ;
struct TYPE_6__ {char* host; char* user; char* pass; char* acct; int port; } ;
struct TYPE_5__ {char* name; char* user; char* pass; char* acct; int dir; int port; } ;
typedef TYPE_1__ Bookmark ;


 int AbsoluteToRelative (int ,int,char*,int ,int ) ;
 int BookmarkToURL (TYPE_1__*,char*,size_t) ;
 int STREQ (char*,char*) ;
 int STRNCPY (char*,char*) ;
 TYPE_3__ gConn ;
 char* gRemoteCWD ;
 int gStartDir ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (int ) ;

void
CurrentURL(char *dst, size_t dsize, int showpass)
{
 Bookmark bm;
 char dir[160];

 memset(&bm, 0, sizeof(bm));
 (void) STRNCPY(bm.name, gConn.host);
 if ((gConn.user[0] != '\0') && (! STREQ(gConn.user, "anonymous")) && (! STREQ(gConn.user, "ftp"))) {
  (void) STRNCPY(bm.user, gConn.user);
  (void) STRNCPY(bm.pass, (showpass == 0) ? "PASSWORD" : gConn.pass);
  (void) STRNCPY(bm.acct, gConn.acct);
 }

 bm.port = gConn.port;






 (void) STRNCPY(dir, gRemoteCWD);
 AbsoluteToRelative(bm.dir, sizeof(bm.dir), dir, gStartDir, strlen(gStartDir));

 BookmarkToURL(&bm, dst, dsize);
}
