
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__ xmlParserErrors ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlDocPtr ;
typedef int * xmlCharEncodingHandlerPtr ;
typedef int xmlChar ;
struct TYPE_30__ {int const type; int * dict; int * encoding; } ;
struct TYPE_29__ {int type; struct TYPE_29__* next; struct TYPE_29__* parent; int * prev; struct TYPE_29__* last; TYPE_2__* nsDef; TYPE_4__* doc; } ;
struct TYPE_28__ {struct TYPE_28__* next; int * href; int * prefix; } ;
struct TYPE_27__ {int input_id; scalar_t__ replaceEntities; scalar_t__ errNo; int * dict; scalar_t__ wellFormed; TYPE_3__* node; int loadsubset; scalar_t__ validate; int instate; TYPE_4__* myDoc; int * encoding; } ;


 int HTML_PARSE_NOIMPLIED ;
 char NXT (int) ;
 char RAW ;






 int XML_ERR_EXTRA_CONTENT ;
 scalar_t__ XML_ERR_INTERNAL_ERROR ;
 int XML_ERR_NOT_WELL_BALANCED ;
 scalar_t__ XML_ERR_NO_MEMORY ;
 scalar_t__ XML_ERR_OK ;
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ;

 int XML_PARSER_CONTENT ;
 int XML_PARSE_NODICT ;

 int XML_SKIP_IDS ;

 int __htmlParseContent (TYPE_1__*) ;
 TYPE_1__* htmlCreateMemoryParserCtxt (char*,int) ;
 int nodePush (TYPE_1__*,TYPE_3__*) ;
 int nsPop (TYPE_1__*,int) ;
 int nsPush (TYPE_1__*,int const*,int const*) ;
 int xmlAddChild (TYPE_3__*,TYPE_3__*) ;
 TYPE_1__* xmlCreateMemoryParserCtxt (char*,int) ;
 int xmlCtxtUseOptionsInternal (TYPE_1__*,int,int *) ;
 int xmlDetectSAX2 (TYPE_1__*) ;
 int xmlDictFree (int *) ;
 int * xmlDictLookup (int *,int *,int) ;
 int xmlFatalErr (TYPE_1__*,int ,int *) ;
 int * xmlFindCharEncodingHandler (char const*) ;
 int xmlFree (int *) ;
 int xmlFreeNode (TYPE_3__*) ;
 int xmlFreeNodeList (TYPE_3__*) ;
 int xmlFreeParserCtxt (TYPE_1__*) ;
 int * xmlGetNamespace (TYPE_1__*,int const*) ;
 TYPE_3__* xmlNewComment (int *) ;
 int xmlParseContent (TYPE_1__*) ;
 int * xmlStrdup (int const*) ;
 int xmlSwitchToEncoding (TYPE_1__*,int *) ;
 int xmlUnlinkNode (TYPE_3__*) ;

xmlParserErrors
xmlParseInNodeContext(xmlNodePtr node, const char *data, int datalen,
                      int options, xmlNodePtr *lst) {
    return(XML_ERR_INTERNAL_ERROR);

}
