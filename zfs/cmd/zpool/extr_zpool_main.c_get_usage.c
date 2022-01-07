
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_help_t ;
 int abort () ;
 char const* gettext (char*) ;

__attribute__((used)) static const char *
get_usage(zpool_help_t idx)
{
 switch (idx) {
 case 159:
  return (gettext("\tadd [-fgLnP] [-o property=value] "
      "<pool> <vdev> ...\n"));
 case 158:
  return (gettext("\tattach [-fw] [-o property=value] "
      "<pool> <device> <new-device>\n"));
 case 156:
  return (gettext("\tclear [-nF] <pool> [device]\n"));
 case 155:
  return (gettext("\tcreate [-fnd] [-o property=value] ... \n"
      "\t    [-O file-system-property=value] ... \n"
      "\t    [-m mountpoint] [-R root] <pool> <vdev> ...\n"));
 case 157:
  return (gettext("\tcheckpoint [-d [-w]] <pool> ...\n"));
 case 154:
  return (gettext("\tdestroy [-f] <pool>\n"));
 case 153:
  return (gettext("\tdetach <pool> <device>\n"));
 case 151:
  return (gettext("\texport [-af] <pool> ...\n"));
 case 149:
  return (gettext("\thistory [-il] [<pool>] ...\n"));
 case 148:
  return (gettext("\timport [-d dir] [-D]\n"
      "\timport [-o mntopts] [-o property=value] ... \n"
      "\t    [-d dir | -c cachefile] [-D] [-l] [-f] [-m] [-N] "
      "[-R root] [-F [-n]] -a\n"
      "\timport [-o mntopts] [-o property=value] ... \n"
      "\t    [-d dir | -c cachefile] [-D] [-l] [-f] [-m] [-N] "
      "[-R root] [-F [-n]]\n"
      "\t    [--rewind-to-checkpoint] <pool | id> [newpool]\n"));
 case 146:
  return (gettext("\tiostat [[[-c [script1,script2,...]"
      "[-lq]]|[-rw]] [-T d | u] [-ghHLpPvy]\n"
      "\t    [[pool ...]|[pool vdev ...]|[vdev ...]]"
      " [[-n] interval [count]]\n"));
 case 145:
  return (gettext("\tlabelclear [-f] <vdev>\n"));
 case 144:
  return (gettext("\tlist [-gHLpPv] [-o property[,...]] "
      "[-T d|u] [pool] ... \n"
      "\t    [interval [count]]\n"));
 case 143:
  return (gettext("\toffline [-f] [-t] <pool> <device> ...\n"));
 case 142:
  return (gettext("\tonline [-e] <pool> <device> ...\n"));
 case 138:
  return (gettext("\treplace [-fw] [-o property=value] "
      "<pool> <device> [new-device]\n"));
 case 140:
  return (gettext("\tremove [-npsw] <pool> <device> ...\n"));
 case 139:
  return (gettext("\treopen [-n] <pool>\n"));
 case 147:
  return (gettext("\tinitialize [-c | -s] [-w] <pool> "
      "[<device> ...]\n"));
 case 136:
  return (gettext("\tscrub [-s | -p] [-w] <pool> ...\n"));
 case 137:
  return (gettext("\tresilver <pool> ...\n"));
 case 131:
  return (gettext("\ttrim [-d] [-r <rate>] [-c | -s] <pool> "
      "[<device> ...]\n"));
 case 133:
  return (gettext("\tstatus [-c [script1,script2,...]] "
      "[-igLpPstvxD]  [-T d|u] [pool] ... \n"
      "\t    [interval [count]]\n"));
 case 130:
  return (gettext("\tupgrade\n"
      "\tupgrade -v\n"
      "\tupgrade [-V version] <-a | pool ...>\n"));
 case 152:
  return (gettext("\tevents [-vHf [pool] | -c]\n"));
 case 150:
  return (gettext("\tget [-Hp] [-o \"all\" | field[,...]] "
      "<\"all\" | property[,...]> <pool> ...\n"));
 case 135:
  return (gettext("\tset <property=value> <pool> \n"));
 case 134:
  return (gettext("\tsplit [-gLnPl] [-R altroot] [-o mntopts]\n"
      "\t    [-o property=value] <pool> <newpool> "
      "[<device> ...]\n"));
 case 141:
  return (gettext("\treguid <pool>\n"));
 case 132:
  return (gettext("\tsync [pool] ...\n"));
 case 129:
  return (gettext("\tversion\n"));
 case 128:
  return (gettext("\twait [-Hp] [-T d|u] [-t <activity>[,...]] "
      "<pool> [interval]\n"));
 }

 abort();

}
