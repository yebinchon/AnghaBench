
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_shm_pool {int dummy; } ;
struct wl_shm {int dummy; } ;
struct pool_buffer {size_t size; int width; int height; int buffer; int cairo; int pango; int surface; void* data; } ;
typedef int int32_t ;


 int CAIRO_FORMAT_ARGB32 ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 int buffer_listener ;
 int cairo_create (int ) ;
 int cairo_image_surface_create_for_data (void*,int ,int,int,int) ;
 int close (int) ;
 int create_pool_file (size_t,char**) ;
 int free (char*) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int pango_cairo_create_context (int ) ;
 int unlink (char*) ;
 int wl_buffer_add_listener (int ,int *,struct pool_buffer*) ;
 struct wl_shm_pool* wl_shm_create_pool (struct wl_shm*,int,size_t) ;
 int wl_shm_pool_create_buffer (struct wl_shm_pool*,int ,int,int,int,int) ;
 int wl_shm_pool_destroy (struct wl_shm_pool*) ;

__attribute__((used)) static struct pool_buffer *create_buffer(struct wl_shm *shm,
  struct pool_buffer *buf, int32_t width, int32_t height,
  uint32_t format) {
 uint32_t stride = width * 4;
 size_t size = stride * height;

 char *name;
 int fd = create_pool_file(size, &name);
 assert(fd != -1);
 void *data = mmap(((void*)0), size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
 struct wl_shm_pool *pool = wl_shm_create_pool(shm, fd, size);
 buf->buffer = wl_shm_pool_create_buffer(pool, 0,
   width, height, stride, format);
 wl_shm_pool_destroy(pool);
 close(fd);
 unlink(name);
 free(name);

 buf->size = size;
 buf->width = width;
 buf->height = height;
 buf->data = data;
 buf->surface = cairo_image_surface_create_for_data(data,
   CAIRO_FORMAT_ARGB32, width, height, stride);
 buf->cairo = cairo_create(buf->surface);
 buf->pango = pango_cairo_create_context(buf->cairo);

 wl_buffer_add_listener(buf->buffer, &buffer_listener, buf);
 return buf;
}
