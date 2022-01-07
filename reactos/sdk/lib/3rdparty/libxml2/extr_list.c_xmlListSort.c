
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlListPtr ;


 int xmlListClear (int *) ;
 int xmlListDelete (int *) ;
 int * xmlListDup (int *) ;
 scalar_t__ xmlListEmpty (int *) ;
 int xmlListMerge (int *,int *) ;

void
xmlListSort(xmlListPtr l)
{
    xmlListPtr lTemp;

    if (l == ((void*)0))
        return;
    if(xmlListEmpty(l))
        return;







    if (((void*)0) ==(lTemp = xmlListDup(l)))
        return;
    xmlListClear(l);
    xmlListMerge(l, lTemp);
    xmlListDelete(lTemp);
    return;
}
