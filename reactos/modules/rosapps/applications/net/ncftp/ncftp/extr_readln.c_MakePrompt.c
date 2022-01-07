
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loggedIn; } ;


 int AbbrevStr (char*,int ,int,int ) ;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char*,size_t) ;
 TYPE_1__ gConn ;
 int gRemoteCWD ;
 int snprintf (char*,size_t,char*,char*,char*,...) ;
 char* tcap_boldface ;
 char* tcap_normal ;

void
MakePrompt(char *dst, size_t dsize)
{
 char acwd[64];
 (void) Strncpy(dst, tcap_boldface, dsize);
 (void) Strncat(dst, "ncftp", dsize);
 (void) Strncat(dst, tcap_normal, dsize);
 if (gConn.loggedIn != 0) {
  AbbrevStr(acwd, gRemoteCWD, 25, 0);
  (void) Strncat(dst, " ", dsize);
  (void) Strncat(dst, acwd, dsize);
  (void) Strncat(dst, " ", dsize);
 }
 (void) Strncat(dst, tcap_boldface, dsize);
 (void) Strncat(dst, ">", dsize);
 (void) Strncat(dst, tcap_normal, dsize);
 (void) Strncat(dst, " ", dsize);

}
