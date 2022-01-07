
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int urlfile ;
struct TYPE_7__ {char const* const name; char const* const user; char const* const pass; char const* const acct; int port; int hasUTIME; int hasPASV; int hasMDTM; int hasSIZE; } ;
struct TYPE_6__ {char* host; char* user; char* pass; char* acct; char* firewallHost; char* firewallUser; char* firewallPass; void* firewallPort; void* firewallType; int port; int hasUTIME; int hasPASV; int hasMDTM; int hasSIZE; } ;


 int DecodeDirectoryURL (TYPE_1__*,char*,int *,char*,int) ;
 scalar_t__ GetBookmark (char*,TYPE_2__*) ;
 scalar_t__ MayUseFirewall (char*,void*,int ) ;
 int STRNCPY (char*,char const* const) ;
 int SetBookmarkDefaults (TYPE_2__*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 TYPE_2__ gBm ;
 TYPE_1__ gConn ;
 int gFirewallExceptionList ;
 char const* const gFirewallHost ;
 char const* const gFirewallPass ;
 void* gFirewallPort ;
 void* gFirewallType ;
 char const* const gFirewallUser ;
 int gLoadedBm ;
 int gStartupURLCdList ;
 int gURLMode ;
 int kMalformedURL ;
 int kNotURL ;
 int stderr ;

__attribute__((used)) static void
SetStartupURL(const char *const urlgiven)
{
 int rc;
 char url[256];
 char urlfile[128];

 gLoadedBm = 0;
 (void) STRNCPY(url, urlgiven);

 rc = DecodeDirectoryURL(&gConn, url, &gStartupURLCdList, urlfile, sizeof(urlfile));
 if (rc == kMalformedURL) {
  (void) fprintf(stderr, "Malformed URL: %s\n", url);
  exit(1);
 } else if (rc == kNotURL) {

  (void) STRNCPY(gConn.host, urlgiven);
  gURLMode = 2;
  if (GetBookmark(gConn.host, &gBm) >= 0) {
   gLoadedBm = 1;
   (void) STRNCPY(gConn.host, gBm.name);
   (void) STRNCPY(gConn.user, gBm.user);
   (void) STRNCPY(gConn.pass, gBm.pass);
   (void) STRNCPY(gConn.acct, gBm.acct);
   gConn.hasSIZE = gBm.hasSIZE;
   gConn.hasMDTM = gBm.hasMDTM;
   gConn.hasPASV = gBm.hasPASV;
   gConn.hasUTIME = gBm.hasUTIME;
   gConn.port = gBm.port;
  } else {
   SetBookmarkDefaults(&gBm);
  }

  if (MayUseFirewall(gConn.host, gFirewallType, gFirewallExceptionList) != 0) {
   gConn.firewallType = gFirewallType;
   (void) STRNCPY(gConn.firewallHost, gFirewallHost);
   (void) STRNCPY(gConn.firewallUser, gFirewallUser);
   (void) STRNCPY(gConn.firewallPass, gFirewallPass);
   gConn.firewallPort = gFirewallPort;
  }
 } else {

  if (urlfile[0] != '\0') {

   (void) fprintf(stderr, "Use ncftpget or ncftpput to handle file URLs.\n");
   exit(1);
  }
  gURLMode = 1;
  if (MayUseFirewall(gConn.host, gFirewallType, gFirewallExceptionList) != 0) {
   gConn.firewallType = gFirewallType;
   (void) STRNCPY(gConn.firewallHost, gFirewallHost);
   (void) STRNCPY(gConn.firewallUser, gFirewallUser);
   (void) STRNCPY(gConn.firewallPass, gFirewallPass);
   gConn.firewallPort = gFirewallPort;
  }
 }
}
