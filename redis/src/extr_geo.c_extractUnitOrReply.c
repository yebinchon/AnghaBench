
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ robj ;
typedef int client ;


 int addReplyError (int *,char*) ;
 int strcmp (char*,char*) ;

double extractUnitOrReply(client *c, robj *unit) {
    char *u = unit->ptr;

    if (!strcmp(u, "m")) {
        return 1;
    } else if (!strcmp(u, "km")) {
        return 1000;
    } else if (!strcmp(u, "ft")) {
        return 0.3048;
    } else if (!strcmp(u, "mi")) {
        return 1609.34;
    } else {
        addReplyError(c,
            "unsupported unit provided. please use m, km, ft, mi");
        return -1;
    }
}
