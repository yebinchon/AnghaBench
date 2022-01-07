
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_buffer {int dummy; } ;
struct pool_buffer {int busy; } ;



__attribute__((used)) static void buffer_release(void *data, struct wl_buffer *wl_buffer) {
 struct pool_buffer *buffer = data;
 buffer->busy = 0;
}
