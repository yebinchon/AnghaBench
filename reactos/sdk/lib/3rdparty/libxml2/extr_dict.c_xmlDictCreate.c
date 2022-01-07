
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
typedef int xmlDictEntry ;
typedef int xmlDict ;
struct TYPE_4__ {int ref_counter; int size; scalar_t__ seed; void* dict; int * subdict; int * strings; scalar_t__ nbElems; scalar_t__ limit; } ;


 int MIN_DICT_SIZE ;
 int __xmlInitializeDict () ;
 scalar_t__ __xmlRandom () ;
 int fprintf (int ,char*) ;
 int memset (void*,int ,int) ;
 int stderr ;
 int xmlDictInitialized ;
 int xmlFree (TYPE_1__*) ;
 void* xmlMalloc (int) ;

xmlDictPtr
xmlDictCreate(void) {
    xmlDictPtr dict;

    if (!xmlDictInitialized)
        if (!__xmlInitializeDict())
            return(((void*)0));





    dict = xmlMalloc(sizeof(xmlDict));
    if (dict) {
        dict->ref_counter = 1;
        dict->limit = 0;

        dict->size = MIN_DICT_SIZE;
 dict->nbElems = 0;
        dict->dict = xmlMalloc(MIN_DICT_SIZE * sizeof(xmlDictEntry));
 dict->strings = ((void*)0);
 dict->subdict = ((void*)0);
        if (dict->dict) {
     memset(dict->dict, 0, MIN_DICT_SIZE * sizeof(xmlDictEntry));



            dict->seed = 0;

     return(dict);
        }
        xmlFree(dict);
    }
    return(((void*)0));
}
