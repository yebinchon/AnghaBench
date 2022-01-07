
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initialized; void* fatalError; void* error; int warning; int comment; int processingInstruction; void* ignorableWhitespace; int cdataBlock; void* characters; int reference; int endDocument; int startDocument; int setDocumentLocator; int unparsedEntityDecl; int notationDecl; int elementDecl; int attributeDecl; int entityDecl; int getParameterEntity; int getEntity; int resolveEntity; int hasExternalSubset; int hasInternalSubset; int isStandalone; int externalSubset; int internalSubset; int * endElement; int * startElement; int * serror; int endElementNs; int startElementNs; } ;
typedef TYPE_1__ xmlSAXHandler ;


 int XML_SAX2_MAGIC ;
 void* xmlParserError ;
 int xmlParserWarning ;
 int xmlSAX2AttributeDecl ;
 int xmlSAX2CDataBlock ;
 void* xmlSAX2Characters ;
 int xmlSAX2Comment ;
 int xmlSAX2ElementDecl ;
 int xmlSAX2EndDocument ;
 int * xmlSAX2EndElement ;
 int xmlSAX2EndElementNs ;
 int xmlSAX2EntityDecl ;
 int xmlSAX2ExternalSubset ;
 int xmlSAX2GetEntity ;
 int xmlSAX2GetParameterEntity ;
 int xmlSAX2HasExternalSubset ;
 int xmlSAX2HasInternalSubset ;
 int xmlSAX2InternalSubset ;
 int xmlSAX2IsStandalone ;
 int xmlSAX2NotationDecl ;
 int xmlSAX2ProcessingInstruction ;
 int xmlSAX2Reference ;
 int xmlSAX2ResolveEntity ;
 int xmlSAX2SetDocumentLocator ;
 int xmlSAX2StartDocument ;
 int * xmlSAX2StartElement ;
 int xmlSAX2StartElementNs ;
 int xmlSAX2UnparsedEntityDecl ;

int
xmlSAXVersion(xmlSAXHandler *hdlr, int version)
{
    if (hdlr == ((void*)0)) return(-1);
    if (version == 2) {
 hdlr->startElement = ((void*)0);
 hdlr->endElement = ((void*)0);
 hdlr->startElementNs = xmlSAX2StartElementNs;
 hdlr->endElementNs = xmlSAX2EndElementNs;
 hdlr->serror = ((void*)0);
 hdlr->initialized = XML_SAX2_MAGIC;






    } else
        return(-1);
    hdlr->internalSubset = xmlSAX2InternalSubset;
    hdlr->externalSubset = xmlSAX2ExternalSubset;
    hdlr->isStandalone = xmlSAX2IsStandalone;
    hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
    hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
    hdlr->resolveEntity = xmlSAX2ResolveEntity;
    hdlr->getEntity = xmlSAX2GetEntity;
    hdlr->getParameterEntity = xmlSAX2GetParameterEntity;
    hdlr->entityDecl = xmlSAX2EntityDecl;
    hdlr->attributeDecl = xmlSAX2AttributeDecl;
    hdlr->elementDecl = xmlSAX2ElementDecl;
    hdlr->notationDecl = xmlSAX2NotationDecl;
    hdlr->unparsedEntityDecl = xmlSAX2UnparsedEntityDecl;
    hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
    hdlr->startDocument = xmlSAX2StartDocument;
    hdlr->endDocument = xmlSAX2EndDocument;
    hdlr->reference = xmlSAX2Reference;
    hdlr->characters = xmlSAX2Characters;
    hdlr->cdataBlock = xmlSAX2CDataBlock;
    hdlr->ignorableWhitespace = xmlSAX2Characters;
    hdlr->processingInstruction = xmlSAX2ProcessingInstruction;
    hdlr->comment = xmlSAX2Comment;
    hdlr->warning = xmlParserWarning;
    hdlr->error = xmlParserError;
    hdlr->fatalError = xmlParserError;

    return(0);
}
