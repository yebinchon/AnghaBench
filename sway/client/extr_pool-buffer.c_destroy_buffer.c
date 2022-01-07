
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_buffer {int size; scalar_t__ data; scalar_t__ pango; scalar_t__ surface; scalar_t__ cairo; scalar_t__ buffer; } ;


 int cairo_destroy (scalar_t__) ;
 int cairo_surface_destroy (scalar_t__) ;
 int g_object_unref (scalar_t__) ;
 int memset (struct pool_buffer*,int ,int) ;
 int munmap (scalar_t__,int ) ;
 int wl_buffer_destroy (scalar_t__) ;

void destroy_buffer(struct pool_buffer *buffer) {
 if (buffer->buffer) {
  wl_buffer_destroy(buffer->buffer);
 }
 if (buffer->cairo) {
  cairo_destroy(buffer->cairo);
 }
 if (buffer->surface) {
  cairo_surface_destroy(buffer->surface);
 }
 if (buffer->pango) {
  g_object_unref(buffer->pango);
 }
 if (buffer->data) {
  munmap(buffer->data, buffer->size);
 }
 memset(buffer, 0, sizeof(struct pool_buffer));
}
