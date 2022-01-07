
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; TYPE_3__* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_7__ {TYPE_1__* type; } ;
typedef TYPE_3__ moduleValue ;
struct TYPE_5__ {char* name; } ;
char* getObjectTypeName(robj *o) {
    char* type;
    if (o == ((void*)0)) {
        type = "none";
    } else {
        switch(o->type) {
        case 129: type = "string"; break;
        case 133: type = "list"; break;
        case 131: type = "set"; break;
        case 128: type = "zset"; break;
        case 134: type = "hash"; break;
        case 130: type = "stream"; break;
        case 132: {
            moduleValue *mv = o->ptr;
            type = mv->type->name;
        }; break;
        default: type = "unknown"; break;
        }
    }
    return type;
}
