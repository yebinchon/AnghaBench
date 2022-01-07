
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;


 int xmlCtxtUseOptionsInternal (int ,int,int *) ;

int
xmlCtxtUseOptions(xmlParserCtxtPtr ctxt, int options)
{
   return(xmlCtxtUseOptionsInternal(ctxt, options, ((void*)0)));
}
