
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlDOMWrapCtxtPtr ;
typedef int xmlDOMWrapCtxt ;


 int memset (int *,int ,int) ;
 int * xmlMalloc (int) ;
 int xmlTreeErrMemory (char*) ;

xmlDOMWrapCtxtPtr
xmlDOMWrapNewCtxt(void)
{
    xmlDOMWrapCtxtPtr ret;

    ret = xmlMalloc(sizeof(xmlDOMWrapCtxt));
    if (ret == ((void*)0)) {
 xmlTreeErrMemory("allocating DOM-wrapper context");
 return (((void*)0));
    }
    memset(ret, 0, sizeof(xmlDOMWrapCtxt));
    return (ret);
}
