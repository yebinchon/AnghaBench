
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNsPtr ;


 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (int *,int) ;
 int xmlTreeErrMemory (char*) ;

__attribute__((used)) static int
xmlDOMWrapNSNormAddNsMapItem2(xmlNsPtr **list, int *size, int *number,
   xmlNsPtr oldNs, xmlNsPtr newNs)
{
    if (*list == ((void*)0)) {
 *list = (xmlNsPtr *) xmlMalloc(6 * sizeof(xmlNsPtr));
 if (*list == ((void*)0)) {
     xmlTreeErrMemory("alloc ns map item");
     return(-1);
 }
 *size = 3;
 *number = 0;
    } else if ((*number) >= (*size)) {
 *size *= 2;
 *list = (xmlNsPtr *) xmlRealloc(*list,
     (*size) * 2 * sizeof(xmlNsPtr));
 if (*list == ((void*)0)) {
     xmlTreeErrMemory("realloc ns map item");
     return(-1);
 }
    }
    (*list)[2 * (*number)] = oldNs;
    (*list)[2 * (*number) +1] = newNs;
    (*number)++;
    return (0);
}
