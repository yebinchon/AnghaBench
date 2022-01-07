
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 scalar_t__ ISTREQ (char*,char*) ;
 int STRNCPY (int ,char*) ;
 void* atoi (char*) ;
 int * fgets (char*,int,int *) ;
 void* gDataPortMode ;
 int gFirewallExceptionList ;
 int gFirewallHost ;
 int gFirewallPass ;
 unsigned int gFirewallPort ;
 int gFirewallType ;
 int gFirewallUser ;
 void* gFwDataPortMode ;
 scalar_t__ isdigit (char) ;
 void* kFallBackToSendPortMode ;
 int kFirewallLastType ;
 void* kPassiveMode ;
 void* kSendPortMode ;
 char* strtok (char*,char*) ;

void
ProcessFirewallPrefFile(FILE *fp)
{
 char line[256];
 char *tok1, *tok2;
 int n;


 line[sizeof(line) - 1] = '\0';
 while (fgets(line, sizeof(line) - 1, fp) != ((void*)0)) {
  tok1 = strtok(line, " =\t\r\n");
  if ((tok1 == ((void*)0)) || (tok1[0] == '#'))
   continue;
  tok2 = strtok(((void*)0), "\r\n");
  if (tok2 == ((void*)0))
   continue;
  if (ISTREQ(tok1, "firewall-type")) {
   n = atoi(tok2);
   if ((n > 0) && (n <= kFirewallLastType))
    gFirewallType = n;
  } else if (ISTREQ(tok1, "firewall-host")) {
   (void) STRNCPY(gFirewallHost, tok2);
  } else if (ISTREQ(tok1, "firewall-port")) {
   n = atoi(tok2);
   if (n > 0)
    gFirewallPort = (unsigned int) n;
  } else if (ISTREQ(tok1, "firewall-user")) {
   (void) STRNCPY(gFirewallUser, tok2);
  } else if (ISTREQ(tok1, "firewall-pass")) {
   (void) STRNCPY(gFirewallPass, tok2);
  } else if (ISTREQ(tok1, "firewall-password")) {
   (void) STRNCPY(gFirewallPass, tok2);
  } else if (ISTREQ(tok1, "firewall-exception-list")) {
   (void) STRNCPY(gFirewallExceptionList, tok2);
  } else if (ISTREQ(tok1, "passive")) {
   if (ISTREQ(tok2, "optional")) {
    gDataPortMode = gFwDataPortMode = kFallBackToSendPortMode;
   } else if (ISTREQ(tok2, "on")) {
    gDataPortMode = gFwDataPortMode = kPassiveMode;
   } else if (ISTREQ(tok2, "off")) {
    gDataPortMode = gFwDataPortMode = kSendPortMode;
   } else if ((int) isdigit(tok2[0])) {
    gDataPortMode = gFwDataPortMode = atoi(tok2);
   }
  }
 }
}
