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

/* Variables and functions */
 unsigned long MS_NODEV ; 
 unsigned long MS_NOEXEC ; 
 unsigned long MS_NOSUID ; 
 unsigned long MS_RDONLY ; 
 unsigned long MS_RELATIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,unsigned long,unsigned long*,char**) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void) {
        char *opts = NULL;
        unsigned long f;

        FUNC0(FUNC2(NULL, MS_RDONLY|MS_NOSUID, &f, &opts) == 0);
        FUNC0(f == (MS_RDONLY|MS_NOSUID));
        FUNC0(opts == NULL);

        FUNC0(FUNC2("", MS_RDONLY|MS_NOSUID, &f, &opts) == 0);
        FUNC0(f == (MS_RDONLY|MS_NOSUID));
        FUNC0(opts == NULL);

        FUNC0(FUNC2("ro,nosuid,nodev,noexec", 0, &f, &opts) == 0);
        FUNC0(f == (MS_RDONLY|MS_NOSUID|MS_NODEV|MS_NOEXEC));
        FUNC0(opts == NULL);

        FUNC0(FUNC2("ro,nosuid,nodev,noexec,mode=755", 0, &f, &opts) == 0);
        FUNC0(f == (MS_RDONLY|MS_NOSUID|MS_NODEV|MS_NOEXEC));
        FUNC0(FUNC3(opts, "mode=755"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,nosuid,foo,hogehoge,nodev,mode=755", 0, &f, &opts) == 0);
        FUNC0(f == (MS_NOSUID|MS_NODEV));
        FUNC0(FUNC3(opts, "foo,hogehoge,mode=755"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,nosuid,nodev,noexec,relatime,net_cls,net_prio", MS_RDONLY, &f, &opts) == 0);
        FUNC0(f == (MS_NOSUID|MS_NODEV|MS_NOEXEC|MS_RELATIME));
        FUNC0(FUNC3(opts, "net_cls,net_prio"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,nosuid,nodev,relatime,size=1630748k,mode=700,uid=1000,gid=1000", MS_RDONLY, &f, &opts) == 0);
        FUNC0(f == (MS_NOSUID|MS_NODEV|MS_RELATIME));
        FUNC0(FUNC3(opts, "size=1630748k,mode=700,uid=1000,gid=1000"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("size=1630748k,rw,gid=1000,,,nodev,relatime,,mode=700,nosuid,uid=1000", MS_RDONLY, &f, &opts) == 0);
        FUNC0(f == (MS_NOSUID|MS_NODEV|MS_RELATIME));
        FUNC0(FUNC3(opts, "size=1630748k,gid=1000,mode=700,uid=1000"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,exec,size=8143984k,nr_inodes=2035996,mode=755", MS_RDONLY|MS_NOSUID|MS_NOEXEC|MS_NODEV, &f, &opts) == 0);
        FUNC0(f == (MS_NOSUID|MS_NODEV));
        FUNC0(FUNC3(opts, "size=8143984k,nr_inodes=2035996,mode=755"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,relatime,fmask=0022,,,dmask=0022", MS_RDONLY, &f, &opts) == 0);
        FUNC0(f == MS_RELATIME);
        FUNC0(FUNC3(opts, "fmask=0022,dmask=0022"));
        opts = FUNC1(opts);

        FUNC0(FUNC2("rw,relatime,fmask=0022,dmask=0022,\"hogehoge", MS_RDONLY, &f, &opts) < 0);
}