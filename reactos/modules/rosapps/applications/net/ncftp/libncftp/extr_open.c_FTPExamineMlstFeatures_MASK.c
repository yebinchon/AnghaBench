#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mlsFeatures; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
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
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(const FTPCIPtr cip, const char *features)
{
	char buf[256], *feat;
	int flags;

	flags = 0;
	FUNC2(buf, features);
	feat = FUNC3(buf, ";*");
	while (feat != NULL) {
		if (FUNC1(feat, "OS.", 3))
			feat += 3;
		if (FUNC0(feat, "type")) {
			flags |= kMlsOptType;
		} else if (FUNC0(feat, "size")) {
			flags |= kMlsOptSize;
		} else if (FUNC0(feat, "modify")) {
			flags |= kMlsOptModify;
		} else if (FUNC0(feat, "UNIX.mode")) {
			flags |= kMlsOptUNIXmode;
		} else if (FUNC0(feat, "UNIX.owner")) {
			flags |= kMlsOptUNIXowner;
		} else if (FUNC0(feat, "UNIX.group")) {
			flags |= kMlsOptUNIXgroup;
		} else if (FUNC0(feat, "perm")) {
			flags |= kMlsOptPerm;
		} else if (FUNC0(feat, "UNIX.uid")) {
			flags |= kMlsOptUNIXuid;
		} else if (FUNC0(feat, "UNIX.gid")) {
			flags |= kMlsOptUNIXgid;
		} else if (FUNC0(feat, "UNIX.gid")) {
			flags |= kMlsOptUnique;
		}
		feat = FUNC3(NULL, ";*");
	}

	cip->mlsFeatures = flags;
}