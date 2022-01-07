
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlRemoveMemoPtr ;
typedef TYPE_2__* xmlRefPtr ;
typedef int xmlListPtr ;
typedef scalar_t__ xmlAttrPtr ;
struct TYPE_4__ {scalar_t__ attr; } ;
struct TYPE_3__ {scalar_t__ ap; int l; } ;


 int xmlListRemoveFirst (int ,void*) ;

__attribute__((used)) static int
xmlWalkRemoveRef(const void *data, void *user)
{
    xmlAttrPtr attr0 = ((xmlRefPtr)data)->attr;
    xmlAttrPtr attr1 = ((xmlRemoveMemoPtr)user)->ap;
    xmlListPtr ref_list = ((xmlRemoveMemoPtr)user)->l;

    if (attr0 == attr1) {
        xmlListRemoveFirst(ref_list, (void *)data);
        return 0;
    }
    return 1;
}
