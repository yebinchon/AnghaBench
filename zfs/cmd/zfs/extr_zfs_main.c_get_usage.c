
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_help_t ;
 int abort () ;
 char const* gettext (char*) ;

__attribute__((used)) static const char *
get_usage(zfs_help_t idx)
{
 switch (idx) {
 case 158:
  return (gettext("\tclone [-p] [-o property=value] ... "
      "<snapshot> <filesystem|volume>\n"));
 case 157:
  return (gettext("\tcreate [-Pnpv] [-o property=value] ... "
      "<filesystem>\n"
      "\tcreate [-Pnpsv] [-b blocksize] [-o property=value] ... "
      "-V <size> <volume>\n"));
 case 156:
  return (gettext("\tdestroy [-fnpRrv] <filesystem|volume>\n"
      "\tdestroy [-dnpRrv] "
      "<filesystem|volume>@<snap>[%<snap>][,...]\n"
      "\tdestroy <filesystem|volume>#<bookmark>\n"));
 case 154:
  return (gettext("\tget [-rHp] [-d max] "
      "[-o \"all\" | field[,...]]\n"
      "\t    [-t type[,...]] [-s source[,...]]\n"
      "\t    <\"all\" | property[,...]> "
      "[filesystem|volume|snapshot|bookmark] ...\n"));
 case 150:
  return (gettext("\tinherit [-rS] <property> "
      "<filesystem|volume|snapshot> ...\n"));
 case 130:
  return (gettext("\tupgrade [-v]\n"
      "\tupgrade [-r] [-V version] <-a | filesystem ...>\n"));
 case 149:
  return (gettext("\tlist [-Hp] [-r|-d max] [-o property[,...]] "
      "[-s property]...\n\t    [-S property]... [-t type[,...]] "
      "[filesystem|volume|snapshot] ...\n"));
 case 147:
  return (gettext("\tmount\n"
      "\tmount [-flvO] [-o opts] <-a | filesystem>\n"));
 case 144:
  return (gettext("\tpromote <clone-filesystem>\n"));
 case 143:
  return (gettext("\treceive [-vnsFhu] "
      "[-o <property>=<value>] ... [-x <property>] ...\n"
      "\t    <filesystem|volume|snapshot>\n"
      "\treceive [-vnsFhu] [-o <property>=<value>] ... "
      "[-x <property>] ... \n"
      "\t    [-d | -e] <filesystem>\n"
      "\treceive -A <filesystem|volume>\n"));
 case 140:
  return (gettext("\trename [-f] <filesystem|volume|snapshot> "
      "<filesystem|volume|snapshot>\n"
      "\trename [-f] -p <filesystem|volume> <filesystem|volume>\n"
      "\trename -r <snapshot> <snapshot>\n"));
 case 139:
  return (gettext("\trollback [-rRf] <snapshot>\n"));
 case 138:
  return (gettext("\tsend [-DnPpRvLecwhb] [-[i|I] snapshot] "
      "<snapshot>\n"
      "\tsend [-nvPLecw] [-i snapshot|bookmark] "
      "<filesystem|volume|snapshot>\n"
      "\tsend [-DnPpvLec] [-i bookmark|snapshot] "
      "--redact <bookmark> <snapshot>\n"
      "\tsend [-nvPe] -t <receive_resume_token>\n"));
 case 137:
  return (gettext("\tset <property=value> ... "
      "<filesystem|volume|snapshot> ...\n"));
 case 136:
  return (gettext("\tshare [-l] <-a [nfs|smb] | filesystem>\n"));
 case 135:
  return (gettext("\tsnapshot [-r] [-o property=value] ... "
      "<filesystem|volume>@<snap> ...\n"));
 case 132:
  return (gettext("\tunmount [-fu] "
      "<-a | filesystem|mountpoint>\n"));
 case 131:
  return (gettext("\tunshare "
      "<-a [nfs|smb] | filesystem|mountpoint>\n"));
 case 162:
  return (gettext("\tallow <filesystem|volume>\n"
      "\tallow [-ldug] "
      "<\"everyone\"|user|group>[,...] <perm|@setname>[,...]\n"
      "\t    <filesystem|volume>\n"
      "\tallow [-ld] -e <perm|@setname>[,...] "
      "<filesystem|volume>\n"
      "\tallow -c <perm|@setname>[,...] <filesystem|volume>\n"
      "\tallow -s @setname <perm|@setname>[,...] "
      "<filesystem|volume>\n"));
 case 134:
  return (gettext("\tunallow [-rldug] "
      "<\"everyone\"|user|group>[,...]\n"
      "\t    [<perm|@setname>[,...]] <filesystem|volume>\n"
      "\tunallow [-rld] -e [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"
      "\tunallow [-r] -c [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"
      "\tunallow [-r] -s @setname [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"));
 case 129:
  return (gettext("\tuserspace [-Hinp] [-o field[,...]] "
      "[-s field] ...\n"
      "\t    [-S field] ... [-t type[,...]] "
      "<filesystem|snapshot>\n"));
 case 153:
  return (gettext("\tgroupspace [-Hinp] [-o field[,...]] "
      "[-s field] ...\n"
      "\t    [-S field] ... [-t type[,...]] "
      "<filesystem|snapshot>\n"));
 case 145:
  return (gettext("\tprojectspace [-Hp] [-o field[,...]] "
      "[-s field] ... \n"
      "\t    [-S field] ... <filesystem|snapshot>\n"));
 case 146:
  return (gettext("\tproject [-d|-r] <directory|file ...>\n"
      "\tproject -c [-0] [-d|-r] [-p id] <directory|file ...>\n"
      "\tproject -C [-k] [-r] <directory ...>\n"
      "\tproject [-p id] [-r] [-s] <directory ...>\n"));
 case 152:
  return (gettext("\thold [-r] <tag> <snapshot> ...\n"));
 case 151:
  return (gettext("\tholds [-rH] <snapshot> ...\n"));
 case 141:
  return (gettext("\trelease [-r] <tag> <snapshot> ...\n"));
 case 155:
  return (gettext("\tdiff [-FHt] <snapshot> "
      "[snapshot|filesystem]\n"));
 case 161:
  return (gettext("\tbookmark <snapshot> <bookmark>\n"));
 case 159:
  return (gettext("\tprogram [-jn] [-t <instruction limit>] "
      "[-m <memory limit (b)>]\n"
      "\t    <pool> <program file> [lua args...]\n"));
 case 148:
  return (gettext("\tload-key [-rn] [-L <keylocation>] "
      "<-a | filesystem|volume>\n"));
 case 133:
  return (gettext("\tunload-key [-r] "
      "<-a | filesystem|volume>\n"));
 case 160:
  return (gettext("\tchange-key [-l] [-o keyformat=<value>]\n"
      "\t    [-o keylocation=<value>] [-o pbkfd2iters=<value>]\n"
      "\t    <filesystem|volume>\n"
      "\tchange-key -i [-l] <filesystem|volume>\n"));
 case 128:
  return (gettext("\tversion\n"));
 case 142:
  return (gettext("\tredact <snapshot> <bookmark> "
      "<redaction_snapshot> ..."));
 }

 abort();

}
