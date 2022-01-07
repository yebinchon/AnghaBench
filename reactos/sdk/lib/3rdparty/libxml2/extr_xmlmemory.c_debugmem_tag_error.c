
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ stderr ;
 int xmlGenericError (int ,char*,void*) ;
 int xmlGenericErrorContext ;
 int xmlMemDisplay (scalar_t__) ;

__attribute__((used)) static void debugmem_tag_error(void *p)
{
     xmlGenericError(xmlGenericErrorContext,
      "Memory tag error occurs :%p \n\t bye\n", p);




}
