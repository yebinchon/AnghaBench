
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int url; int formatted; } ;
typedef TYPE_1__ TableData ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static TableData *table_data_free(TableData *d) {
        assert(d);

        free(d->formatted);
        free(d->url);

        return mfree(d);
}
