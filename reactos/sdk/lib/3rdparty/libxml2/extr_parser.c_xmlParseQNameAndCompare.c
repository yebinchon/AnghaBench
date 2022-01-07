
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef char xmlChar ;
struct TYPE_7__ {TYPE_1__* input; } ;
struct TYPE_6__ {char* cur; } ;


 int GROW ;
 scalar_t__ IS_BLANK_CH (char const) ;
 char const* xmlParseNameAndCompare (TYPE_2__*,char const*) ;
 char* xmlParseQName (TYPE_2__*,char const**) ;

__attribute__((used)) static const xmlChar *
xmlParseQNameAndCompare(xmlParserCtxtPtr ctxt, xmlChar const *name,
                        xmlChar const *prefix) {
    const xmlChar *cmp;
    const xmlChar *in;
    const xmlChar *ret;
    const xmlChar *prefix2;

    if (prefix == ((void*)0)) return(xmlParseNameAndCompare(ctxt, name));

    GROW;
    in = ctxt->input->cur;

    cmp = prefix;
    while (*in != 0 && *in == *cmp) {
 ++in;
 ++cmp;
    }
    if ((*cmp == 0) && (*in == ':')) {
        in++;
 cmp = name;
 while (*in != 0 && *in == *cmp) {
     ++in;
     ++cmp;
 }
 if (*cmp == 0 && (*in == '>' || IS_BLANK_CH (*in))) {

     ctxt->input->cur = in;
     return((const xmlChar*) 1);
 }
    }



    ret = xmlParseQName (ctxt, &prefix2);
    if ((ret == name) && (prefix == prefix2))
 return((const xmlChar*) 1);
    return ret;
}
