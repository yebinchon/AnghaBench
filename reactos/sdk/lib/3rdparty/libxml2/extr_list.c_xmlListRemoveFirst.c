
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlListPtr ;
typedef int * xmlLinkPtr ;


 int xmlLinkDeallocator (int *,int *) ;
 int * xmlListLinkSearch (int *,void*) ;

int
xmlListRemoveFirst(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;

    if (l == ((void*)0))
        return(0);

    lk = xmlListLinkSearch(l, data);
    if (lk != ((void*)0)) {
        xmlLinkDeallocator(l, lk);
        return 1;
    }
    return 0;
}
