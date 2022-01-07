
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void vlc_object_t ;


 int assert (int) ;
 void* calloc (size_t,int) ;
 int free (void*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_object_init (void*,void*,char const*) ;

void *(vlc_custom_create)(vlc_object_t *parent, size_t length,
                          const char *typename)
{
    assert(length >= sizeof (vlc_object_t));

    vlc_object_t *obj = calloc(length, 1);
    if (unlikely(obj == ((void*)0) || vlc_object_init(obj, parent, typename))) {
        free(obj);
        obj = ((void*)0);
    }
    return obj;
}
