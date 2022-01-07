
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ initialized; int * warning; } ;
typedef TYPE_1__ xmlSAXHandler ;


 int * xmlParserWarning ;
 int xmlSAX2DefaultVersionValue ;
 int xmlSAXVersion (TYPE_1__*,int ) ;

void
xmlSAX2InitDefaultSAXHandler(xmlSAXHandler *hdlr, int warning)
{
    if ((hdlr == ((void*)0)) || (hdlr->initialized != 0))
 return;

    xmlSAXVersion(hdlr, xmlSAX2DefaultVersionValue);
    if (warning == 0)
 hdlr->warning = ((void*)0);
    else
 hdlr->warning = xmlParserWarning;
}
