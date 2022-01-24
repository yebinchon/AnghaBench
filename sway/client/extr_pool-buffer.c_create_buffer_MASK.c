#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct wl_shm_pool {int dummy; } ;
struct wl_shm {int dummy; } ;
struct pool_buffer {size_t size; int width; int height; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cairo; int /*<<< orphan*/  pango; int /*<<< orphan*/  surface; void* data; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  buffer_listener ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (size_t,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pool_buffer*) ; 
 struct wl_shm_pool* FUNC10 (struct wl_shm*,int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct wl_shm_pool*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wl_shm_pool*) ; 

__attribute__((used)) static struct pool_buffer *FUNC13(struct wl_shm *shm,
		struct pool_buffer *buf, int32_t width, int32_t height,
		uint32_t format) {
	uint32_t stride = width * 4;
	size_t size = stride * height;

	char *name;
	int fd = FUNC4(size, &name);
	FUNC0(fd != -1);
	void *data = FUNC6(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
	struct wl_shm_pool *pool = FUNC10(shm, fd, size);
	buf->buffer = FUNC11(pool, 0,
			width, height, stride, format);
	FUNC12(pool);
	FUNC3(fd);
	FUNC8(name);
	FUNC5(name);

	buf->size = size;
	buf->width = width;
	buf->height = height;
	buf->data = data;
	buf->surface = FUNC2(data,
			CAIRO_FORMAT_ARGB32, width, height, stride);
	buf->cairo = FUNC1(buf->surface);
	buf->pango = FUNC7(buf->cairo);

	FUNC9(buf->buffer, &buffer_listener, buf);
	return buf;
}