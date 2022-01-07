
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlDictPtr ;
struct TYPE_8__ {scalar_t__ code; } ;
struct TYPE_6__ {int warning; int error; TYPE_2__* userData; } ;
struct TYPE_7__ {int* spaceTab; int* space; int standalone; int wellFormed; int nsWellFormed; int valid; TYPE_3__ lastError; int * catalogs; int * attsSpecial; int * attsDefault; int node_seq; scalar_t__ sizeentcopy; scalar_t__ sizeentities; scalar_t__ nbentities; int charset; scalar_t__ depth; scalar_t__ errNo; scalar_t__ inSubset; scalar_t__ checkIndex; scalar_t__ nbChars; scalar_t__ record_info; TYPE_1__ vctxt; scalar_t__ disableSAX; scalar_t__ token; int instate; scalar_t__ external; scalar_t__ html; scalar_t__ hasPErefs; scalar_t__ hasExternalSubset; int * myDoc; int * extSubSystem; int * extSubURI; int * directory; int * encoding; int * version; int * name; scalar_t__ nameNr; int * node; scalar_t__ nodeNr; scalar_t__ spaceNr; int * input; scalar_t__ inputNr; int dict; } ;


 int DICT_FREE (int *) ;
 int XML_CHAR_ENCODING_UTF8 ;
 scalar_t__ XML_ERR_OK ;
 int XML_PARSER_START ;
 int * inputPop (TYPE_2__*) ;
 int xmlCatalogFreeLocal (int *) ;
 int xmlFreeDoc (int *) ;
 int xmlFreeInputStream (int *) ;
 int * xmlHashDefaultDeallocator ;
 int xmlHashFree (int *,int *) ;
 int xmlInitNodeInfoSeq (int *) ;
 int xmlParserValidityError ;
 int xmlParserValidityWarning ;
 int xmlResetError (TYPE_3__*) ;

void
xmlCtxtReset(xmlParserCtxtPtr ctxt)
{
    xmlParserInputPtr input;
    xmlDictPtr dict;

    if (ctxt == ((void*)0))
        return;

    dict = ctxt->dict;

    while ((input = inputPop(ctxt)) != ((void*)0)) {
        xmlFreeInputStream(input);
    }
    ctxt->inputNr = 0;
    ctxt->input = ((void*)0);

    ctxt->spaceNr = 0;
    if (ctxt->spaceTab != ((void*)0)) {
 ctxt->spaceTab[0] = -1;
 ctxt->space = &ctxt->spaceTab[0];
    } else {
        ctxt->space = ((void*)0);
    }


    ctxt->nodeNr = 0;
    ctxt->node = ((void*)0);

    ctxt->nameNr = 0;
    ctxt->name = ((void*)0);

    DICT_FREE(ctxt->version);
    ctxt->version = ((void*)0);
    DICT_FREE(ctxt->encoding);
    ctxt->encoding = ((void*)0);
    DICT_FREE(ctxt->directory);
    ctxt->directory = ((void*)0);
    DICT_FREE(ctxt->extSubURI);
    ctxt->extSubURI = ((void*)0);
    DICT_FREE(ctxt->extSubSystem);
    ctxt->extSubSystem = ((void*)0);
    if (ctxt->myDoc != ((void*)0))
        xmlFreeDoc(ctxt->myDoc);
    ctxt->myDoc = ((void*)0);

    ctxt->standalone = -1;
    ctxt->hasExternalSubset = 0;
    ctxt->hasPErefs = 0;
    ctxt->html = 0;
    ctxt->external = 0;
    ctxt->instate = XML_PARSER_START;
    ctxt->token = 0;

    ctxt->wellFormed = 1;
    ctxt->nsWellFormed = 1;
    ctxt->disableSAX = 0;
    ctxt->valid = 1;





    ctxt->record_info = 0;
    ctxt->nbChars = 0;
    ctxt->checkIndex = 0;
    ctxt->inSubset = 0;
    ctxt->errNo = XML_ERR_OK;
    ctxt->depth = 0;
    ctxt->charset = XML_CHAR_ENCODING_UTF8;
    ctxt->catalogs = ((void*)0);
    ctxt->nbentities = 0;
    ctxt->sizeentities = 0;
    ctxt->sizeentcopy = 0;
    xmlInitNodeInfoSeq(&ctxt->node_seq);

    if (ctxt->attsDefault != ((void*)0)) {
        xmlHashFree(ctxt->attsDefault, xmlHashDefaultDeallocator);
        ctxt->attsDefault = ((void*)0);
    }
    if (ctxt->attsSpecial != ((void*)0)) {
        xmlHashFree(ctxt->attsSpecial, ((void*)0));
        ctxt->attsSpecial = ((void*)0);
    }





    if (ctxt->lastError.code != XML_ERR_OK)
        xmlResetError(&ctxt->lastError);
}
