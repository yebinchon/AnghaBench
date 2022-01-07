
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ encoding; int di; } ;
typedef TYPE_1__ setTypeIterator ;


 scalar_t__ OBJ_ENCODING_HT ;
 int dictReleaseIterator (int ) ;
 int zfree (TYPE_1__*) ;

void setTypeReleaseIterator(setTypeIterator *si) {
    if (si->encoding == OBJ_ENCODING_HT)
        dictReleaseIterator(si->di);
    zfree(si);
}
