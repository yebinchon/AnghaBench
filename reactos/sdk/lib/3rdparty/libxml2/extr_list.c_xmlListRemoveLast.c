
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlListPtr ;
typedef int * xmlLinkPtr ;


 int xmlLinkDeallocator (int *,int *) ;
 int * xmlListLinkReverseSearch (int *,void*) ;

int
xmlListRemoveLast(xmlListPtr l, void *data)
{
    xmlLinkPtr lk;

    if (l == ((void*)0))
        return(0);

    lk = xmlListLinkReverseSearch(l, data);
    if (lk != ((void*)0)) {
 xmlLinkDeallocator(l, lk);
        return 1;
    }
    return 0;
}
