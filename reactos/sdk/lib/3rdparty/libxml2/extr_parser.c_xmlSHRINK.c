
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_6__ {scalar_t__* cur; } ;
struct TYPE_5__ {TYPE_3__* input; } ;


 int INPUT_CHUNK ;
 int xmlParserInputGrow (TYPE_3__*,int ) ;
 int xmlParserInputShrink (TYPE_3__*) ;

__attribute__((used)) static void xmlSHRINK (xmlParserCtxtPtr ctxt) {
    xmlParserInputShrink(ctxt->input);
    if (*ctxt->input->cur == 0)
        xmlParserInputGrow(ctxt->input, INPUT_CHUNK);
}
