
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
typedef int spathname2 ;
typedef int spathname ;
typedef int sdir ;
typedef int mode_t ;
typedef int ldir2 ;
struct TYPE_2__ {char* defaultAnonPassword; } ;
typedef int FILE ;


 int FOPEN_WRITE_TEXT ;
 int FTPGetLocalCWD (char*,int) ;
 scalar_t__ MkSpoolDir (char*,int) ;
 int SpoolName (char*,char*,int,char const,int ,int ) ;
 int ToBase64 (char*,char const* const,int ,int) ;
 char* YESNO (int) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,int ) ;
 scalar_t__ fprintf (int *,char*,...) ;
 TYPE_1__ gLib ;
 int gSpoolSerial ;
 int gUnprocessedJobs ;
 scalar_t__ kDefaultFTPPort ;
 int kPasswordMagic ;
 int kPasswordMagicLen ;
 int memcpy (char*,int ,int) ;
 int perror (char*) ;
 scalar_t__ rename (char*,char*) ;
 scalar_t__ strcmp (char const* const,char*) ;
 int strlen (char const* const) ;
 int umask (int) ;
 int unlink (char*) ;

int
SpoolX(
 const char *const op,
 const char *const rfile,
 const char *const rdir,
 const char *const lfile,
 const char *const ldir,
 const char *const host,
 const char *const ip,
 const unsigned int port,
 const char *const user,
 const char *const passclear,
 int xtype,
 int recursive,
 int delete,
 int passive,
 const char *const precmd,
 const char *const perfilecmd,
 const char *const postcmd,
 time_t when)
{
 char sdir[256];
 char pass[160];
 char spathname[256];
 char spathname2[256];
 char ldir2[256];
 FILE *fp;


 mode_t um;


 if (MkSpoolDir(sdir, sizeof(sdir)) < 0)
  return (-1);

 gSpoolSerial++;
 SpoolName(sdir, spathname2, sizeof(spathname2), op[0], gSpoolSerial, when);
 SpoolName(sdir, spathname, sizeof(spathname), 'z', gSpoolSerial, when);



 um = umask(077);
 fp = fopen(spathname, FOPEN_WRITE_TEXT);
 (void) umask(um);

 if (fp == ((void*)0))
  return (-1);

 if (fprintf(fp, "# This is a NcFTP spool file entry.\n# Run the \"ncftpbatch\" program to process the spool directory.\n#\n") < 0)
  goto err;
 if (fprintf(fp, "op=%s\n", op) < 0)
  goto err;
 if (fprintf(fp, "hostname=%s\n", host) < 0)
  goto err;
 if ((ip != ((void*)0)) && (ip[0] != '\0') && (fprintf(fp, "host-ip=%s\n", ip) < 0))
  goto err;
 if ((port > 0) && (port != (unsigned int) kDefaultFTPPort) && (fprintf(fp, "port=%u\n", port) < 0))
  goto err;
 if ((user != ((void*)0)) && (user[0] != '\0') && (strcmp(user, "anonymous") != 0) && (fprintf(fp, "user=%s\n", user) < 0))
  goto err;
 if ((strcmp(user, "anonymous") != 0) && (passclear != ((void*)0)) && (passclear[0] != '\0')) {
  (void) memcpy(pass, kPasswordMagic, kPasswordMagicLen);
  ToBase64(pass + kPasswordMagicLen, passclear, strlen(passclear), 1);
  if (fprintf(fp, "pass=%s\n", pass) < 0)
   goto err;
 } else if ((strcmp(user, "anonymous") == 0) && (gLib.defaultAnonPassword[0] != '\0')) {
  if (fprintf(fp, "anon-pass=%s\n", gLib.defaultAnonPassword) < 0)
   goto err;
 }
 if (fprintf(fp, "xtype=%c\n", xtype) < 0)
  goto err;
 if ((recursive != 0) && (fprintf(fp, "recursive=%s\n", YESNO(recursive)) < 0))
  goto err;
 if ((delete != 0) && (fprintf(fp, "delete=%s\n", YESNO(delete)) < 0))
  goto err;
 if (fprintf(fp, "passive=%d\n", passive) < 0)
  goto err;
 if (fprintf(fp, "remote-dir=%s\n", rdir) < 0)
  goto err;
 if ((ldir == ((void*)0)) || (ldir[0] == '\0') || (strcmp(ldir, ".") == 0)) {

  FTPGetLocalCWD(ldir2, sizeof(ldir2));
  if (fprintf(fp, "local-dir=%s\n", ldir2) < 0)
   goto err;
 } else {
  if (fprintf(fp, "local-dir=%s\n", ldir) < 0)
   goto err;
 }
 if (fprintf(fp, "remote-file=%s\n", rfile) < 0)
  goto err;
 if (fprintf(fp, "local-file=%s\n", lfile) < 0)
  goto err;
 if ((precmd != ((void*)0)) && (precmd[0] != '\0') && (fprintf(fp, "pre-command=%s\n", precmd) < 0))
  goto err;
 if ((perfilecmd != ((void*)0)) && (perfilecmd[0] != '\0') && (fprintf(fp, "per-file-command=%s\n", perfilecmd) < 0))
  goto err;
 if ((postcmd != ((void*)0)) && (postcmd[0] != '\0') && (fprintf(fp, "post-command=%s\n", postcmd) < 0))
  goto err;

 if (fclose(fp) < 0)
  goto err2;


 if (rename(spathname, spathname2) < 0) {
  perror("rename spoolfile failed");
  goto err3;
 }
 gUnprocessedJobs++;
 return (0);

err:
 (void) fclose(fp);
err2:
 perror("write to spool file failed");
err3:
 (void) unlink(spathname);
 return (-1);
}
