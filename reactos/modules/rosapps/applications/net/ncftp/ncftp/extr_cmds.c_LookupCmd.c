
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {char** h_addr_list; char* h_name; char** h_aliases; } ;
typedef int ipStr ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 struct hostent* GetHostEntry (char const*,struct in_addr*) ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int MyInetAddr (char*,int,char**,int) ;
 int PrintCmdUsage (int const) ;
 int Trace (int,char*,...) ;
 int gOptInd ;
 int gUnusedArg ;

void
LookupCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i, j;
 struct hostent *hp;
 const char *host;
 char **cpp;
 struct in_addr ip_address;
 int shortMode, opt;
 char ipStr[16];

 ARGSUSED(gUnusedArg);
 shortMode = 1;

 GetoptReset();
 while ((opt = Getopt(argc, argv, "v")) >= 0) {
  if (opt == 'v')
   shortMode = 0;
  else {
   PrintCmdUsage(cmdp);
   return;
  }
 }

 for (i=gOptInd; i<argc; i++) {
  hp = GetHostEntry((host = argv[i]), &ip_address);
  if ((i > gOptInd) && (shortMode == 0))
   Trace(-1, "\n");
  if (hp == ((void*)0)) {
   Trace(-1, "Unable to get information about site %s.\n", host);
  } else if (shortMode) {
   MyInetAddr(ipStr, sizeof(ipStr), hp->h_addr_list, 0);
   Trace(-1, "%-40s %s\n", hp->h_name, ipStr);
  } else {
   Trace(-1, "%s:\n", host);
   Trace(-1, "    Name:     %s\n", hp->h_name);
   for (cpp = hp->h_aliases; *cpp != ((void*)0); cpp++)
    Trace(-1, "    Alias:    %s\n", *cpp);
   for (j = 0, cpp = hp->h_addr_list; *cpp != ((void*)0); cpp++, ++j) {
    MyInetAddr(ipStr, sizeof(ipStr), hp->h_addr_list, j);
    Trace(-1, "    Address:  %s\n", ipStr);
   }
  }
 }
}
