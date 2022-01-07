
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gDoNotDisplayAds ;
 int gNumProgramRuns ;
 int printf (char*) ;

__attribute__((used)) static void
Plug(void)
{



 if ((gDoNotDisplayAds == 0) && ((gNumProgramRuns % 7) == 2)) {
  (void) printf("\n\n\n\tThank you for using NcFTP Client.\n\tAsk your system administrator to try NcFTPd Server!\n\thttp://www.ncftpd.com\n\n\n\n");
 }

}
