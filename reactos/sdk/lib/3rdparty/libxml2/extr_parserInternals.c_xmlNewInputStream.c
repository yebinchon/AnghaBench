
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlParserInputPtr ;
typedef int xmlParserInput ;
typedef TYPE_2__* xmlParserCtxtPtr ;
struct TYPE_8__ {int input_id; } ;
struct TYPE_7__ {int line; int col; int standalone; scalar_t__ id; } ;


 int memset (TYPE_1__*,int ,int) ;
 int xmlErrMemory (TYPE_2__*,char*) ;
 scalar_t__ xmlMalloc (int) ;

xmlParserInputPtr
xmlNewInputStream(xmlParserCtxtPtr ctxt) {
    xmlParserInputPtr input;

    input = (xmlParserInputPtr) xmlMalloc(sizeof(xmlParserInput));
    if (input == ((void*)0)) {
        xmlErrMemory(ctxt, "couldn't allocate a new input stream\n");
 return(((void*)0));
    }
    memset(input, 0, sizeof(xmlParserInput));
    input->line = 1;
    input->col = 1;
    input->standalone = -1;






    if (ctxt != ((void*)0))
        input->id = ctxt->input_id++;

    return(input);
}
