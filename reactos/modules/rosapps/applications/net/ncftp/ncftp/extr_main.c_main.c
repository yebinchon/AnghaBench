
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redialDelay; void* maxDials; int acct; int pass; int user; void* port; } ;


 int CommandShell () ;
 int DumpFirewallPrefsTemplate () ;
 int Getopt (int,char const** const,char*) ;
 int GetoptReset () ;
 int LoadFirewallPrefs (int ) ;
 int OpenURL () ;
 int PostInit () ;
 int PostShell () ;
 int PreInit () ;
 int STRNCPY (int ,int ) ;
 int SetStartupURL (char const*) ;
 int Usage () ;
 void* atoi (int ) ;
 int exit (int ) ;
 TYPE_1__ gConn ;
 int gOptArg ;
 int gOptInd ;
 scalar_t__ gStartupUrlParameterGiven ;

int
main(int argc, const char **const argv)
{
 int c;
 int n;

 PreInit();
 while ((c = Getopt(argc, argv, "P:u:p:J:rd:g:FVLD")) > 0) switch(c) {
  case 'P':
  case 'u':
  case 'p':
  case 'J':
   gStartupUrlParameterGiven = 1;
   break;
  case 'r':
  case 'g':
  case 'd':
  case 'V':
  case 'L':
  case 'D':
  case 'F':
   break;
  default:
   Usage();
 }

 if (gOptInd < argc) {
  LoadFirewallPrefs(0);
  SetStartupURL(argv[gOptInd]);
 } else if (gStartupUrlParameterGiven != 0) {




  Usage();
 }

 GetoptReset();




 while ((c = Getopt(argc, argv, "P:u:p:j:J:rd:g:FVLD")) > 0) switch(c) {
  case 'P':
   gConn.port = atoi(gOptArg);
   break;
  case 'u':
   (void) STRNCPY(gConn.user, gOptArg);
   break;
  case 'p':
   (void) STRNCPY(gConn.pass, gOptArg);
   break;
  case 'J':
  case 'j':
   (void) STRNCPY(gConn.acct, gOptArg);
   break;
  case 'r':

   break;
  case 'g':
   gConn.maxDials = atoi(gOptArg);
   break;
  case 'd':
   n = atoi(gOptArg);
   if (n >= 10)
    gConn.redialDelay = n;
   break;
  case 'F':
   DumpFirewallPrefsTemplate();
   exit(0);

   break;
  case 'V':

  case 'L':

  case 'D':

   break;
  default:
   Usage();
 }

 PostInit();
 OpenURL();
 CommandShell();
 PostShell();
 exit(0);
}
