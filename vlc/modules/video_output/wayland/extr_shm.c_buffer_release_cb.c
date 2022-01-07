
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_buffer {int dummy; } ;
struct buffer_data {int * counter; int picture; } ;


 int free (struct buffer_data*) ;
 int picture_Release (int ) ;
 int wl_buffer_destroy (struct wl_buffer*) ;

__attribute__((used)) static void buffer_release_cb(void *data, struct wl_buffer *buffer)
{
    struct buffer_data *d = data;

    picture_Release(d->picture);
    (*(d->counter))--;
    free(d);
    wl_buffer_destroy(buffer);
}
