
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ xmlParserInputPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_8__ {scalar_t__ instate; scalar_t__ input; int inSubset; int inputNr; int depth; } ;


 int COPY_BUF (int,int*,int,int) ;
 int CUR_CHAR (int) ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXT ;
 int NEXTL (int) ;
 char RAW ;
 int XML_ERR_ENTITY_CHAR_ERROR ;
 int XML_ERR_ENTITY_NOT_FINISHED ;
 int XML_ERR_ENTITY_NOT_STARTED ;
 int XML_ERR_ENTITY_PE_INTERNAL ;
 int XML_PARSER_BUFFER_SIZE ;
 scalar_t__ XML_PARSER_ENTITY_VALUE ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_SUBSTITUTE_PEREF ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,int *) ;
 int xmlFatalErrMsgInt (TYPE_1__*,int ,char*,int) ;
 int xmlFree (int*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 int* xmlParseStringName (TYPE_1__*,int const**) ;
 scalar_t__ xmlRealloc (int*,int) ;
 int* xmlStringDecodeEntities (TYPE_1__*,int*,int ,int ,int ,int ) ;

xmlChar *
xmlParseEntityValue(xmlParserCtxtPtr ctxt, xmlChar **orig) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int c, l;
    xmlChar stop;
    xmlChar *ret = ((void*)0);
    const xmlChar *cur = ((void*)0);
    xmlParserInputPtr input;

    if (RAW == '"') stop = '"';
    else if (RAW == '\'') stop = '\'';
    else {
 xmlFatalErr(ctxt, XML_ERR_ENTITY_NOT_STARTED, ((void*)0));
 return(((void*)0));
    }
    buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
    if (buf == ((void*)0)) {
 xmlErrMemory(ctxt, ((void*)0));
 return(((void*)0));
    }





    ctxt->instate = XML_PARSER_ENTITY_VALUE;
    input = ctxt->input;
    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        goto error;
    NEXT;
    c = CUR_CHAR(l);
    while (((IS_CHAR(c)) && ((c != stop) ||
     (ctxt->input != input))) && (ctxt->instate != XML_PARSER_EOF)) {
 if (len + 5 >= size) {
     xmlChar *tmp;

     size *= 2;
     tmp = (xmlChar *) xmlRealloc(buf, size * sizeof(xmlChar));
     if (tmp == ((void*)0)) {
  xmlErrMemory(ctxt, ((void*)0));
                goto error;
     }
     buf = tmp;
 }
 COPY_BUF(l,buf,len,c);
 NEXTL(l);

 GROW;
 c = CUR_CHAR(l);
 if (c == 0) {
     GROW;
     c = CUR_CHAR(l);
 }
    }
    buf[len] = 0;
    if (ctxt->instate == XML_PARSER_EOF)
        goto error;
    if (c != stop) {
        xmlFatalErr(ctxt, XML_ERR_ENTITY_NOT_FINISHED, ((void*)0));
        goto error;
    }
    NEXT;






    cur = buf;
    while (*cur != 0) {
 if ((*cur == '%') || ((*cur == '&') && (cur[1] != '#'))) {
     xmlChar *name;
     xmlChar tmp = *cur;
            int nameOk = 0;

     cur++;
     name = xmlParseStringName(ctxt, &cur);
            if (name != ((void*)0)) {
                nameOk = 1;
                xmlFree(name);
            }
            if ((nameOk == 0) || (*cur != ';')) {
  xmlFatalErrMsgInt(ctxt, XML_ERR_ENTITY_CHAR_ERROR,
     "EntityValue: '%c' forbidden except for entities references\n",
                           tmp);
                goto error;
     }
     if ((tmp == '%') && (ctxt->inSubset == 1) &&
  (ctxt->inputNr == 1)) {
  xmlFatalErr(ctxt, XML_ERR_ENTITY_PE_INTERNAL, ((void*)0));
                goto error;
     }
     if (*cur == 0)
         break;
 }
 cur++;
    }
    ++ctxt->depth;
    ret = xmlStringDecodeEntities(ctxt, buf, XML_SUBSTITUTE_PEREF,
                                  0, 0, 0);
    --ctxt->depth;
    if (orig != ((void*)0)) {
        *orig = buf;
        buf = ((void*)0);
    }

error:
    if (buf != ((void*)0))
        xmlFree(buf);
    return(ret);
}
