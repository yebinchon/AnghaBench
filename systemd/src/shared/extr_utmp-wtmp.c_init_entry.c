
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct utsname {char* release; } ;
struct utmpx {int ut_id; int ut_line; int ut_host; } ;


 int assert (struct utmpx*) ;
 int init_timestamp (struct utmpx*,int ) ;
 int strncpy (int ,char*,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void init_entry(struct utmpx *store, usec_t t) {
        struct utsname uts = {};

        assert(store);

        init_timestamp(store, t);

        if (uname(&uts) >= 0)
                strncpy(store->ut_host, uts.release, sizeof(store->ut_host));

        strncpy(store->ut_line, "~", sizeof(store->ut_line));
        strncpy(store->ut_id, "~~", sizeof(store->ut_id));
}
