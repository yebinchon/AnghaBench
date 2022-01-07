
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int os_release; int machine_info; int hostname; int path; int name; } ;
typedef TYPE_1__ Image ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static Image *image_free(Image *i) {
        assert(i);

        free(i->name);
        free(i->path);

        free(i->hostname);
        strv_free(i->machine_info);
        strv_free(i->os_release);

        return mfree(i);
}
