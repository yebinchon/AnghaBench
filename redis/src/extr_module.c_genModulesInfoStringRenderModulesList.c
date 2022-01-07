
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sds ;
struct TYPE_4__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_5__ {char* name; } ;
typedef TYPE_2__ RedisModule ;


 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 int sdscat (int ,char*) ;
 int sdsnew (char*) ;
 int sdstrim (int ,char*) ;

sds genModulesInfoStringRenderModulesList(list *l) {
    listIter li;
    listNode *ln;
    listRewind(l,&li);
    sds output = sdsnew("[");
    while((ln = listNext(&li))) {
        RedisModule *module = ln->value;
        output = sdscat(output,module->name);
    }
    output = sdstrim(output,"|");
    output = sdscat(output,"]");
    return output;
}
