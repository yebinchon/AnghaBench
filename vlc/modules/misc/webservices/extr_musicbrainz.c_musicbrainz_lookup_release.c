
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ root; } ;
typedef TYPE_1__ musicbrainz_lookup_t ;


 int free (TYPE_1__*) ;
 int json_value_free (scalar_t__) ;

__attribute__((used)) static void musicbrainz_lookup_release(musicbrainz_lookup_t *p)
{
    if(p && p->root)
        json_value_free(p->root);
    free(p);
}
