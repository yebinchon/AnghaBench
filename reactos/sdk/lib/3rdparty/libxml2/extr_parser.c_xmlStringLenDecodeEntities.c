
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef TYPE_2__* xmlEntityPtr ;
typedef int xmlChar ;
struct TYPE_19__ {int checked; scalar_t__ etype; int* content; int* name; } ;
struct TYPE_18__ {int depth; int options; int nbentities; scalar_t__ validate; } ;


 int COPY_BUF (int,int*,size_t,int) ;
 int CUR_SCHAR (int const*,int) ;
 int XML_ERR_ENTITY_LOOP ;
 int XML_ERR_ENTITY_PROCESSING ;
 int XML_ERR_INTERNAL_ERROR ;
 scalar_t__ XML_INTERNAL_PREDEFINED_ENTITY ;
 size_t XML_PARSER_BIG_BUFFER_SIZE ;
 size_t XML_PARSER_BUFFER_SIZE ;
 int XML_PARSE_DTDVALID ;
 int XML_PARSE_HUGE ;
 int XML_PARSE_NOENT ;
 int XML_SUBSTITUTE_PEREF ;
 int XML_SUBSTITUTE_REF ;
 int growBuffer (int*,size_t) ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_1__*,int ,char*) ;
 int xmlFree (int*) ;
 int xmlGenericError (int ,char*,int const*) ;
 int xmlGenericErrorContext ;
 int xmlLoadEntityContent (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ xmlMallocAtomic (size_t) ;
 int xmlParseStringCharRef (TYPE_1__*,int const**) ;
 TYPE_2__* xmlParseStringEntityRef (TYPE_1__*,int const**) ;
 TYPE_2__* xmlParseStringPEReference (TYPE_1__*,int const**) ;
 scalar_t__ xmlParserDebugEntities ;
 scalar_t__ xmlParserEntityCheck (TYPE_1__*,size_t,TYPE_2__*,int ) ;
 int* xmlStringDecodeEntities (TYPE_1__*,int*,int,int ,int ,int ) ;
 int xmlStrlen (int*) ;
 int xmlWarningMsg (TYPE_1__*,int ,char*,int*,int *) ;

xmlChar *
xmlStringLenDecodeEntities(xmlParserCtxtPtr ctxt, const xmlChar *str, int len,
        int what, xmlChar end, xmlChar end2, xmlChar end3) {
    xmlChar *buffer = ((void*)0);
    size_t buffer_size = 0;
    size_t nbchars = 0;

    xmlChar *current = ((void*)0);
    xmlChar *rep = ((void*)0);
    const xmlChar *last;
    xmlEntityPtr ent;
    int c,l;

    if ((ctxt == ((void*)0)) || (str == ((void*)0)) || (len < 0))
 return(((void*)0));
    last = str + len;

    if (((ctxt->depth > 40) &&
         ((ctxt->options & XML_PARSE_HUGE) == 0)) ||
 (ctxt->depth > 1024)) {
 xmlFatalErr(ctxt, XML_ERR_ENTITY_LOOP, ((void*)0));
 return(((void*)0));
    }




    buffer_size = XML_PARSER_BIG_BUFFER_SIZE;
    buffer = (xmlChar *) xmlMallocAtomic(buffer_size);
    if (buffer == ((void*)0)) goto mem_error;





    if (str < last)
 c = CUR_SCHAR(str, l);
    else
        c = 0;
    while ((c != 0) && (c != end) &&
    (c != end2) && (c != end3)) {

 if (c == 0) break;
        if ((c == '&') && (str[1] == '#')) {
     int val = xmlParseStringCharRef(ctxt, &str);
     if (val == 0)
                goto int_error;
     COPY_BUF(0,buffer,nbchars,val);
     if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
         growBuffer(buffer, XML_PARSER_BUFFER_SIZE);
     }
 } else if ((c == '&') && (what & XML_SUBSTITUTE_REF)) {
     if (xmlParserDebugEntities)
  xmlGenericError(xmlGenericErrorContext,
   "String decoding Entity Reference: %.30s\n",
   str);
     ent = xmlParseStringEntityRef(ctxt, &str);
     xmlParserEntityCheck(ctxt, 0, ent, 0);
     if (ent != ((void*)0))
         ctxt->nbentities += ent->checked / 2;
     if ((ent != ((void*)0)) &&
  (ent->etype == XML_INTERNAL_PREDEFINED_ENTITY)) {
  if (ent->content != ((void*)0)) {
      COPY_BUF(0,buffer,nbchars,ent->content[0]);
      if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
   growBuffer(buffer, XML_PARSER_BUFFER_SIZE);
      }
  } else {
      xmlFatalErrMsg(ctxt, XML_ERR_INTERNAL_ERROR,
       "predefined entity has no content\n");
                    goto int_error;
  }
     } else if ((ent != ((void*)0)) && (ent->content != ((void*)0))) {
  ctxt->depth++;
  rep = xmlStringDecodeEntities(ctxt, ent->content, what,
                         0, 0, 0);
  ctxt->depth--;
  if (rep == ((void*)0))
                    goto int_error;

                current = rep;
                while (*current != 0) {
                    buffer[nbchars++] = *current++;
                    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
                        if (xmlParserEntityCheck(ctxt, nbchars, ent, 0))
                            goto int_error;
                        growBuffer(buffer, XML_PARSER_BUFFER_SIZE);
                    }
                }
                xmlFree(rep);
                rep = ((void*)0);
     } else if (ent != ((void*)0)) {
  int i = xmlStrlen(ent->name);
  const xmlChar *cur = ent->name;

  buffer[nbchars++] = '&';
  if (nbchars + i + XML_PARSER_BUFFER_SIZE > buffer_size) {
      growBuffer(buffer, i + XML_PARSER_BUFFER_SIZE);
  }
  for (;i > 0;i--)
      buffer[nbchars++] = *cur++;
  buffer[nbchars++] = ';';
     }
 } else if (c == '%' && (what & XML_SUBSTITUTE_PEREF)) {
     if (xmlParserDebugEntities)
  xmlGenericError(xmlGenericErrorContext,
   "String decoding PE Reference: %.30s\n", str);
     ent = xmlParseStringPEReference(ctxt, &str);
     xmlParserEntityCheck(ctxt, 0, ent, 0);
     if (ent != ((void*)0))
         ctxt->nbentities += ent->checked / 2;
     if (ent != ((void*)0)) {
                if (ent->content == ((void*)0)) {






      if (((ctxt->options & XML_PARSE_NOENT) != 0) ||
   ((ctxt->options & XML_PARSE_DTDVALID) != 0) ||
   (ctxt->validate != 0)) {
   xmlLoadEntityContent(ctxt, ent);
      } else {
   xmlWarningMsg(ctxt, XML_ERR_ENTITY_PROCESSING,
    "not validating will not read content for PE entity %s\n",
                        ent->name, ((void*)0));
      }
  }
  ctxt->depth++;
  rep = xmlStringDecodeEntities(ctxt, ent->content, what,
                         0, 0, 0);
  ctxt->depth--;
  if (rep == ((void*)0))
                    goto int_error;
                current = rep;
                while (*current != 0) {
                    buffer[nbchars++] = *current++;
                    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
                        if (xmlParserEntityCheck(ctxt, nbchars, ent, 0))
                            goto int_error;
                        growBuffer(buffer, XML_PARSER_BUFFER_SIZE);
                    }
                }
                xmlFree(rep);
                rep = ((void*)0);
     }
 } else {
     COPY_BUF(l,buffer,nbchars,c);
     str += l;
     if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
         growBuffer(buffer, XML_PARSER_BUFFER_SIZE);
     }
 }
 if (str < last)
     c = CUR_SCHAR(str, l);
 else
     c = 0;
    }
    buffer[nbchars] = 0;
    return(buffer);

mem_error:
    xmlErrMemory(ctxt, ((void*)0));
int_error:
    if (rep != ((void*)0))
        xmlFree(rep);
    if (buffer != ((void*)0))
        xmlFree(buffer);
    return(((void*)0));
}
