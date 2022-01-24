#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int zfs_help_t ;

/* Variables and functions */
#define  HELP_ALLOW 162 
#define  HELP_BOOKMARK 161 
#define  HELP_CHANGE_KEY 160 
#define  HELP_CHANNEL_PROGRAM 159 
#define  HELP_CLONE 158 
#define  HELP_CREATE 157 
#define  HELP_DESTROY 156 
#define  HELP_DIFF 155 
#define  HELP_GET 154 
#define  HELP_GROUPSPACE 153 
#define  HELP_HOLD 152 
#define  HELP_HOLDS 151 
#define  HELP_INHERIT 150 
#define  HELP_LIST 149 
#define  HELP_LOAD_KEY 148 
#define  HELP_MOUNT 147 
#define  HELP_PROJECT 146 
#define  HELP_PROJECTSPACE 145 
#define  HELP_PROMOTE 144 
#define  HELP_RECEIVE 143 
#define  HELP_REDACT 142 
#define  HELP_RELEASE 141 
#define  HELP_RENAME 140 
#define  HELP_ROLLBACK 139 
#define  HELP_SEND 138 
#define  HELP_SET 137 
#define  HELP_SHARE 136 
#define  HELP_SNAPSHOT 135 
#define  HELP_UNALLOW 134 
#define  HELP_UNLOAD_KEY 133 
#define  HELP_UNMOUNT 132 
#define  HELP_UNSHARE 131 
#define  HELP_UPGRADE 130 
#define  HELP_USERSPACE 129 
#define  HELP_VERSION 128 
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 (char*) ; 

__attribute__((used)) static const char *
FUNC2(zfs_help_t idx)
{
	switch (idx) {
	case HELP_CLONE:
		return (FUNC1("\tclone [-p] [-o property=value] ... "
		    "<snapshot> <filesystem|volume>\n"));
	case HELP_CREATE:
		return (FUNC1("\tcreate [-Pnpv] [-o property=value] ... "
		    "<filesystem>\n"
		    "\tcreate [-Pnpsv] [-b blocksize] [-o property=value] ... "
		    "-V <size> <volume>\n"));
	case HELP_DESTROY:
		return (FUNC1("\tdestroy [-fnpRrv] <filesystem|volume>\n"
		    "\tdestroy [-dnpRrv] "
		    "<filesystem|volume>@<snap>[%<snap>][,...]\n"
		    "\tdestroy <filesystem|volume>#<bookmark>\n"));
	case HELP_GET:
		return (FUNC1("\tget [-rHp] [-d max] "
		    "[-o \"all\" | field[,...]]\n"
		    "\t    [-t type[,...]] [-s source[,...]]\n"
		    "\t    <\"all\" | property[,...]> "
		    "[filesystem|volume|snapshot|bookmark] ...\n"));
	case HELP_INHERIT:
		return (FUNC1("\tinherit [-rS] <property> "
		    "<filesystem|volume|snapshot> ...\n"));
	case HELP_UPGRADE:
		return (FUNC1("\tupgrade [-v]\n"
		    "\tupgrade [-r] [-V version] <-a | filesystem ...>\n"));
	case HELP_LIST:
		return (FUNC1("\tlist [-Hp] [-r|-d max] [-o property[,...]] "
		    "[-s property]...\n\t    [-S property]... [-t type[,...]] "
		    "[filesystem|volume|snapshot] ...\n"));
	case HELP_MOUNT:
		return (FUNC1("\tmount\n"
		    "\tmount [-flvO] [-o opts] <-a | filesystem>\n"));
	case HELP_PROMOTE:
		return (FUNC1("\tpromote <clone-filesystem>\n"));
	case HELP_RECEIVE:
		return (FUNC1("\treceive [-vnsFhu] "
		    "[-o <property>=<value>] ... [-x <property>] ...\n"
		    "\t    <filesystem|volume|snapshot>\n"
		    "\treceive [-vnsFhu] [-o <property>=<value>] ... "
		    "[-x <property>] ... \n"
		    "\t    [-d | -e] <filesystem>\n"
		    "\treceive -A <filesystem|volume>\n"));
	case HELP_RENAME:
		return (FUNC1("\trename [-f] <filesystem|volume|snapshot> "
		    "<filesystem|volume|snapshot>\n"
		    "\trename [-f] -p <filesystem|volume> <filesystem|volume>\n"
		    "\trename -r <snapshot> <snapshot>\n"));
	case HELP_ROLLBACK:
		return (FUNC1("\trollback [-rRf] <snapshot>\n"));
	case HELP_SEND:
		return (FUNC1("\tsend [-DnPpRvLecwhb] [-[i|I] snapshot] "
		    "<snapshot>\n"
		    "\tsend [-nvPLecw] [-i snapshot|bookmark] "
		    "<filesystem|volume|snapshot>\n"
		    "\tsend [-DnPpvLec] [-i bookmark|snapshot] "
		    "--redact <bookmark> <snapshot>\n"
		    "\tsend [-nvPe] -t <receive_resume_token>\n"));
	case HELP_SET:
		return (FUNC1("\tset <property=value> ... "
		    "<filesystem|volume|snapshot> ...\n"));
	case HELP_SHARE:
		return (FUNC1("\tshare [-l] <-a [nfs|smb] | filesystem>\n"));
	case HELP_SNAPSHOT:
		return (FUNC1("\tsnapshot [-r] [-o property=value] ... "
		    "<filesystem|volume>@<snap> ...\n"));
	case HELP_UNMOUNT:
		return (FUNC1("\tunmount [-fu] "
		    "<-a | filesystem|mountpoint>\n"));
	case HELP_UNSHARE:
		return (FUNC1("\tunshare "
		    "<-a [nfs|smb] | filesystem|mountpoint>\n"));
	case HELP_ALLOW:
		return (FUNC1("\tallow <filesystem|volume>\n"
		    "\tallow [-ldug] "
		    "<\"everyone\"|user|group>[,...] <perm|@setname>[,...]\n"
		    "\t    <filesystem|volume>\n"
		    "\tallow [-ld] -e <perm|@setname>[,...] "
		    "<filesystem|volume>\n"
		    "\tallow -c <perm|@setname>[,...] <filesystem|volume>\n"
		    "\tallow -s @setname <perm|@setname>[,...] "
		    "<filesystem|volume>\n"));
	case HELP_UNALLOW:
		return (FUNC1("\tunallow [-rldug] "
		    "<\"everyone\"|user|group>[,...]\n"
		    "\t    [<perm|@setname>[,...]] <filesystem|volume>\n"
		    "\tunallow [-rld] -e [<perm|@setname>[,...]] "
		    "<filesystem|volume>\n"
		    "\tunallow [-r] -c [<perm|@setname>[,...]] "
		    "<filesystem|volume>\n"
		    "\tunallow [-r] -s @setname [<perm|@setname>[,...]] "
		    "<filesystem|volume>\n"));
	case HELP_USERSPACE:
		return (FUNC1("\tuserspace [-Hinp] [-o field[,...]] "
		    "[-s field] ...\n"
		    "\t    [-S field] ... [-t type[,...]] "
		    "<filesystem|snapshot>\n"));
	case HELP_GROUPSPACE:
		return (FUNC1("\tgroupspace [-Hinp] [-o field[,...]] "
		    "[-s field] ...\n"
		    "\t    [-S field] ... [-t type[,...]] "
		    "<filesystem|snapshot>\n"));
	case HELP_PROJECTSPACE:
		return (FUNC1("\tprojectspace [-Hp] [-o field[,...]] "
		    "[-s field] ... \n"
		    "\t    [-S field] ... <filesystem|snapshot>\n"));
	case HELP_PROJECT:
		return (FUNC1("\tproject [-d|-r] <directory|file ...>\n"
		    "\tproject -c [-0] [-d|-r] [-p id] <directory|file ...>\n"
		    "\tproject -C [-k] [-r] <directory ...>\n"
		    "\tproject [-p id] [-r] [-s] <directory ...>\n"));
	case HELP_HOLD:
		return (FUNC1("\thold [-r] <tag> <snapshot> ...\n"));
	case HELP_HOLDS:
		return (FUNC1("\tholds [-rH] <snapshot> ...\n"));
	case HELP_RELEASE:
		return (FUNC1("\trelease [-r] <tag> <snapshot> ...\n"));
	case HELP_DIFF:
		return (FUNC1("\tdiff [-FHt] <snapshot> "
		    "[snapshot|filesystem]\n"));
	case HELP_BOOKMARK:
		return (FUNC1("\tbookmark <snapshot> <bookmark>\n"));
	case HELP_CHANNEL_PROGRAM:
		return (FUNC1("\tprogram [-jn] [-t <instruction limit>] "
		    "[-m <memory limit (b)>]\n"
		    "\t    <pool> <program file> [lua args...]\n"));
	case HELP_LOAD_KEY:
		return (FUNC1("\tload-key [-rn] [-L <keylocation>] "
		    "<-a | filesystem|volume>\n"));
	case HELP_UNLOAD_KEY:
		return (FUNC1("\tunload-key [-r] "
		    "<-a | filesystem|volume>\n"));
	case HELP_CHANGE_KEY:
		return (FUNC1("\tchange-key [-l] [-o keyformat=<value>]\n"
		    "\t    [-o keylocation=<value>] [-o pbkfd2iters=<value>]\n"
		    "\t    <filesystem|volume>\n"
		    "\tchange-key -i [-l] <filesystem|volume>\n"));
	case HELP_VERSION:
		return (FUNC1("\tversion\n"));
	case HELP_REDACT:
		return (FUNC1("\tredact <snapshot> <bookmark> "
		    "<redaction_snapshot> ..."));
	}

	FUNC0();
	/* NOTREACHED */
}