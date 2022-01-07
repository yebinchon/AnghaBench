
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNode ;


 long xmlGetLineNoInternal (int const*,int ) ;

long
xmlGetLineNo(const xmlNode *node)
{
    return(xmlGetLineNoInternal(node, 0));
}
