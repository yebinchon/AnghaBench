
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_5__ {int * error; int * warning; } ;
struct TYPE_7__ {int recovery; int options; int replaceEntities; int pedantic; int keepBlanks; int validate; int dictNames; int linenumbers; int * dict; TYPE_2__* sax; TYPE_1__ vctxt; int loadsubset; int * encoding; } ;
struct TYPE_6__ {int initialized; int * cdataBlock; int * endElementNs; int * startElementNs; int endElement; int startElement; int * fatalError; int * error; int * warning; int ignorableWhitespace; } ;


 int XML_COMPLETE_ATTRS ;
 int XML_DETECT_IDS ;
 int XML_PARSE_BIG_LINES ;
 int XML_PARSE_COMPACT ;
 int XML_PARSE_DTDATTR ;
 int XML_PARSE_DTDLOAD ;
 int XML_PARSE_DTDVALID ;
 int XML_PARSE_HUGE ;
 int XML_PARSE_IGNORE_ENC ;
 int XML_PARSE_NOBASEFIX ;
 int XML_PARSE_NOBLANKS ;
 int XML_PARSE_NOCDATA ;
 int XML_PARSE_NODICT ;
 int XML_PARSE_NOENT ;
 int XML_PARSE_NOERROR ;
 int XML_PARSE_NONET ;
 int XML_PARSE_NOWARNING ;
 int XML_PARSE_NSCLEAN ;
 int XML_PARSE_OLD10 ;
 int XML_PARSE_OLDSAX ;
 int XML_PARSE_PEDANTIC ;
 int XML_PARSE_RECOVER ;
 int XML_PARSE_SAX1 ;
 int xmlDictSetLimit (int *,int ) ;
 int xmlFree (int *) ;
 int xmlSAX2EndElement ;
 int xmlSAX2IgnorableWhitespace ;
 int xmlSAX2StartElement ;
 int * xmlStrdup (int const*) ;

__attribute__((used)) static int
xmlCtxtUseOptionsInternal(xmlParserCtxtPtr ctxt, int options, const char *encoding)
{
    if (ctxt == ((void*)0))
        return(-1);
    if (encoding != ((void*)0)) {
        if (ctxt->encoding != ((void*)0))
     xmlFree((xmlChar *) ctxt->encoding);
        ctxt->encoding = xmlStrdup((const xmlChar *) encoding);
    }
    if (options & XML_PARSE_RECOVER) {
        ctxt->recovery = 1;
        options -= XML_PARSE_RECOVER;
 ctxt->options |= XML_PARSE_RECOVER;
    } else
        ctxt->recovery = 0;
    if (options & XML_PARSE_DTDLOAD) {
        ctxt->loadsubset = XML_DETECT_IDS;
        options -= XML_PARSE_DTDLOAD;
 ctxt->options |= XML_PARSE_DTDLOAD;
    } else
        ctxt->loadsubset = 0;
    if (options & XML_PARSE_DTDATTR) {
        ctxt->loadsubset |= XML_COMPLETE_ATTRS;
        options -= XML_PARSE_DTDATTR;
 ctxt->options |= XML_PARSE_DTDATTR;
    }
    if (options & XML_PARSE_NOENT) {
        ctxt->replaceEntities = 1;

        options -= XML_PARSE_NOENT;
 ctxt->options |= XML_PARSE_NOENT;
    } else
        ctxt->replaceEntities = 0;
    if (options & XML_PARSE_PEDANTIC) {
        ctxt->pedantic = 1;
        options -= XML_PARSE_PEDANTIC;
 ctxt->options |= XML_PARSE_PEDANTIC;
    } else
        ctxt->pedantic = 0;
    if (options & XML_PARSE_NOBLANKS) {
        ctxt->keepBlanks = 0;
        ctxt->sax->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
        options -= XML_PARSE_NOBLANKS;
 ctxt->options |= XML_PARSE_NOBLANKS;
    } else
        ctxt->keepBlanks = 1;
    if (options & XML_PARSE_DTDVALID) {
        ctxt->validate = 1;
        if (options & XML_PARSE_NOWARNING)
            ctxt->vctxt.warning = ((void*)0);
        if (options & XML_PARSE_NOERROR)
            ctxt->vctxt.error = ((void*)0);
        options -= XML_PARSE_DTDVALID;
 ctxt->options |= XML_PARSE_DTDVALID;
    } else
        ctxt->validate = 0;
    if (options & XML_PARSE_NOWARNING) {
        ctxt->sax->warning = ((void*)0);
        options -= XML_PARSE_NOWARNING;
    }
    if (options & XML_PARSE_NOERROR) {
        ctxt->sax->error = ((void*)0);
        ctxt->sax->fatalError = ((void*)0);
        options -= XML_PARSE_NOERROR;
    }
    if (options & XML_PARSE_NODICT) {
        ctxt->dictNames = 0;
        options -= XML_PARSE_NODICT;
 ctxt->options |= XML_PARSE_NODICT;
    } else {
        ctxt->dictNames = 1;
    }
    if (options & XML_PARSE_NOCDATA) {
        ctxt->sax->cdataBlock = ((void*)0);
        options -= XML_PARSE_NOCDATA;
 ctxt->options |= XML_PARSE_NOCDATA;
    }
    if (options & XML_PARSE_NSCLEAN) {
 ctxt->options |= XML_PARSE_NSCLEAN;
        options -= XML_PARSE_NSCLEAN;
    }
    if (options & XML_PARSE_NONET) {
 ctxt->options |= XML_PARSE_NONET;
        options -= XML_PARSE_NONET;
    }
    if (options & XML_PARSE_COMPACT) {
 ctxt->options |= XML_PARSE_COMPACT;
        options -= XML_PARSE_COMPACT;
    }
    if (options & XML_PARSE_OLD10) {
 ctxt->options |= XML_PARSE_OLD10;
        options -= XML_PARSE_OLD10;
    }
    if (options & XML_PARSE_NOBASEFIX) {
 ctxt->options |= XML_PARSE_NOBASEFIX;
        options -= XML_PARSE_NOBASEFIX;
    }
    if (options & XML_PARSE_HUGE) {
 ctxt->options |= XML_PARSE_HUGE;
        options -= XML_PARSE_HUGE;
        if (ctxt->dict != ((void*)0))
            xmlDictSetLimit(ctxt->dict, 0);
    }
    if (options & XML_PARSE_OLDSAX) {
 ctxt->options |= XML_PARSE_OLDSAX;
        options -= XML_PARSE_OLDSAX;
    }
    if (options & XML_PARSE_IGNORE_ENC) {
 ctxt->options |= XML_PARSE_IGNORE_ENC;
        options -= XML_PARSE_IGNORE_ENC;
    }
    if (options & XML_PARSE_BIG_LINES) {
 ctxt->options |= XML_PARSE_BIG_LINES;
        options -= XML_PARSE_BIG_LINES;
    }
    ctxt->linenumbers = 1;
    return (options);
}
