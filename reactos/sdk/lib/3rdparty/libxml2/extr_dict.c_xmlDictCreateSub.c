
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
struct TYPE_6__ {struct TYPE_6__* subdict; int seed; } ;


 int fprintf (int ,char*) ;
 int stderr ;
 TYPE_1__* xmlDictCreate () ;
 int xmlDictReference (TYPE_1__*) ;

xmlDictPtr
xmlDictCreateSub(xmlDictPtr sub) {
    xmlDictPtr dict = xmlDictCreate();

    if ((dict != ((void*)0)) && (sub != ((void*)0))) {



        dict->seed = sub->seed;
        dict->subdict = sub;
 xmlDictReference(dict->subdict);
    }
    return(dict);
}
