
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hwdb ;
 int sd_hwdb_unref (int ) ;

__attribute__((used)) static void builtin_hwdb_exit(void) {
        hwdb = sd_hwdb_unref(hwdb);
}
