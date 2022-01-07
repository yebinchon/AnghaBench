
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AbbrevStr (char*,int ,int,int) ;
 int UNAME ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* gLibNcFTPVersion ;
 char* gVersion ;
 int * stderr ;

__attribute__((used)) static void
Usage(void)
{
 FILE *fp;




 fp = stderr;
 (void) fprintf(fp, "\nUsage:  ncftp [flags] [<host> | <directory URL to browse>]\n");
 (void) fprintf(fp, "\nFlags:\n  -u XX  Use username XX instead of anonymous.\n  -p XX  Use password XX with the username.\n  -P XX  Use port number XX instead of the default FTP service port (21).\n  -j XX  Use account XX with the username (rarely needed).\n  -F     Dump a sample $HOME/.ncftp/firewall prefs file to stdout and exit.\n");






 (void) fprintf(fp, "\nProgram version:  %s\nLibrary version:  %s\n", gVersion + 5, gLibNcFTPVersion + 5);




 (void) fprintf(fp, "\nThis is a freeware program by Mike Gleason (ncftp@ncftp.com).\n");
 (void) fprintf(fp, "Use ncftpget and ncftpput for command-line FTP.\n\n");
 exit(2);
}
