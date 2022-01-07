
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int usedMLS; int mlsFeatures; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPCmd (TYPE_1__* const,char*,char*) ;
 int STRNCAT (char*,char*) ;
 int kMlsOptModify ;
 int kMlsOptPerm ;
 int kMlsOptSize ;
 int kMlsOptType ;
 int kMlsOptUNIXgid ;
 int kMlsOptUNIXgroup ;
 int kMlsOptUNIXmode ;
 int kMlsOptUNIXowner ;
 int kMlsOptUNIXuid ;
 int kMlsOptUnique ;
 int kPreferredMlsOpts ;
 size_t strlen (char*) ;

__attribute__((used)) static void
FTPRequestMlsOptions(const FTPCIPtr cip)
{
 int f;
 char optstr[128];
 size_t optstrlen;

 if (cip->usedMLS == 0) {

  cip->usedMLS = 1;

  f = cip->mlsFeatures & kPreferredMlsOpts;
  optstr[0] = '\0';


  if ((f & kMlsOptType) != 0) {
   STRNCAT(optstr, "type;");
  }


  if ((f & kMlsOptSize) != 0) {
   STRNCAT(optstr, "size;");
  }


  if ((f & kMlsOptModify) != 0) {
   STRNCAT(optstr, "modify;");
  }


  if ((f & kMlsOptUNIXmode) != 0) {
   STRNCAT(optstr, "UNIX.mode;");
  }


  if ((f & kMlsOptPerm) != 0) {
   STRNCAT(optstr, "perm;");
  }


  if ((f & kMlsOptUNIXowner) != 0) {
   STRNCAT(optstr, "UNIX.owner;");
  }


  if ((f & kMlsOptUNIXuid) != 0) {
   STRNCAT(optstr, "UNIX.uid;");
  }


  if ((f & kMlsOptUNIXgroup) != 0) {
   STRNCAT(optstr, "UNIX.group;");
  }


  if ((f & kMlsOptUNIXgid) != 0) {
   STRNCAT(optstr, "UNIX.gid;");
  }


  if ((f & kMlsOptUnique) != 0) {
   STRNCAT(optstr, "unique;");
  }


  optstrlen = strlen(optstr);
  if (optstrlen > 0) {
   if (optstr[optstrlen - 1] == ';')
    optstr[optstrlen - 1] = '\0';
   (void) FTPCmd(cip, "OPTS MLST %s", optstr);
  }
 }
}
