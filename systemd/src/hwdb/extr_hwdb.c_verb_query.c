
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hwdb_query (char*) ;

__attribute__((used)) static int verb_query(int argc, char *argv[], void *userdata) {
        return hwdb_query(argv[1]);
}
