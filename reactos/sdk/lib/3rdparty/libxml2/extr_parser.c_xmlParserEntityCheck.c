
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef TYPE_4__* xmlEntityPtr ;
typedef int xmlChar ;
struct TYPE_12__ {scalar_t__ etype; int checked; scalar_t__* content; } ;
struct TYPE_10__ {scalar_t__ code; } ;
struct TYPE_11__ {int options; scalar_t__ errNo; unsigned long nbentities; TYPE_2__ lastError; scalar_t__ sizeentities; TYPE_1__* input; int depth; } ;
struct TYPE_9__ {size_t consumed; size_t cur; size_t base; } ;


 scalar_t__ XML_ERR_ENTITY_LOOP ;
 scalar_t__ XML_ERR_UNDECLARED_ENTITY ;
 scalar_t__ XML_INTERNAL_PREDEFINED_ENTITY ;
 size_t XML_MAX_TEXT_LENGTH ;
 size_t XML_PARSER_BIG_ENTITY ;
 size_t XML_PARSER_NON_LINEAR ;
 int XML_PARSE_HUGE ;
 int XML_SUBSTITUTE_REF ;
 scalar_t__ XML_WAR_UNDECLARED_ENTITY ;
 int xmlFatalErr (TYPE_3__*,scalar_t__,int *) ;
 int xmlFree (int *) ;
 scalar_t__ xmlStrchr (int *,char) ;
 int * xmlStringDecodeEntities (TYPE_3__*,scalar_t__*,int ,int ,int ,int ) ;

__attribute__((used)) static int
xmlParserEntityCheck(xmlParserCtxtPtr ctxt, size_t size,
                     xmlEntityPtr ent, size_t replacement)
{
    size_t consumed = 0;

    if ((ctxt == ((void*)0)) || (ctxt->options & XML_PARSE_HUGE))
        return (0);
    if (ctxt->lastError.code == XML_ERR_ENTITY_LOOP)
        return (1);





    if ((ent != ((void*)0)) && (ent->etype != XML_INTERNAL_PREDEFINED_ENTITY) &&
 (ent->content != ((void*)0)) && (ent->checked == 0) &&
 (ctxt->errNo != XML_ERR_ENTITY_LOOP)) {
 unsigned long oldnbent = ctxt->nbentities;
 xmlChar *rep;

 ent->checked = 1;

        ++ctxt->depth;
 rep = xmlStringDecodeEntities(ctxt, ent->content,
      XML_SUBSTITUTE_REF, 0, 0, 0);
        --ctxt->depth;
 if ((rep == ((void*)0)) || (ctxt->errNo == XML_ERR_ENTITY_LOOP)) {
     ent->content[0] = 0;
 }

 ent->checked = (ctxt->nbentities - oldnbent + 1) * 2;
 if (rep != ((void*)0)) {
     if (xmlStrchr(rep, '<'))
  ent->checked |= 1;
     xmlFree(rep);
     rep = ((void*)0);
 }
    }
    if (replacement != 0) {
 if (replacement < XML_MAX_TEXT_LENGTH)
     return(0);






        if (ctxt->input != ((void*)0)) {
     consumed = ctxt->input->consumed +
                (ctxt->input->cur - ctxt->input->base);
 }
        consumed += ctxt->sizeentities;

        if (replacement < XML_PARSER_NON_LINEAR * consumed)
     return(0);
    } else if (size != 0) {



        if (size < XML_PARSER_BIG_ENTITY)
     return(0);




        if (ctxt->input != ((void*)0)) {
            consumed = ctxt->input->consumed +
                (ctxt->input->cur - ctxt->input->base);
        }
        consumed += ctxt->sizeentities;

        if ((size < XML_PARSER_NON_LINEAR * consumed) &&
     (ctxt->nbentities * 3 < XML_PARSER_NON_LINEAR * consumed))
            return (0);
    } else if (ent != ((void*)0)) {



        size = ent->checked / 2;




        if (ctxt->input != ((void*)0)) {
            consumed = ctxt->input->consumed +
                (ctxt->input->cur - ctxt->input->base);
        }
        consumed += ctxt->sizeentities;





        if (size * 3 < consumed * XML_PARSER_NON_LINEAR)
            return (0);
    } else {



 if (((ctxt->lastError.code != XML_ERR_UNDECLARED_ENTITY) &&
      (ctxt->lastError.code != XML_WAR_UNDECLARED_ENTITY)) ||
     (ctxt->nbentities <= 10000))
     return (0);
    }
    xmlFatalErr(ctxt, XML_ERR_ENTITY_LOOP, ((void*)0));
    return (1);
}
