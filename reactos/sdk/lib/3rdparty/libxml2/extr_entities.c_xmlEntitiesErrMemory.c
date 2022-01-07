
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XML_ERR_NO_MEMORY ;
 int XML_FROM_TREE ;
 int __xmlSimpleError (int ,int ,int *,int *,char const*) ;

__attribute__((used)) static void
xmlEntitiesErrMemory(const char *extra)
{
    __xmlSimpleError(XML_FROM_TREE, XML_ERR_NO_MEMORY, ((void*)0), ((void*)0), extra);
}
