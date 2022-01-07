
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlListPtr ;
struct TYPE_7__ {int linkCompare; } ;


 scalar_t__ xmlListCopy (TYPE_1__*,TYPE_1__* const) ;
 TYPE_1__* xmlListCreate (int *,int ) ;

xmlListPtr
xmlListDup(const xmlListPtr old)
{
    xmlListPtr cur;

    if (old == ((void*)0))
        return(((void*)0));






    if (((void*)0) ==(cur = xmlListCreate(((void*)0), old->linkCompare)))
        return (((void*)0));
    if (0 != xmlListCopy(cur, old))
        return ((void*)0);
    return cur;
}
