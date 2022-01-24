#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int use_argb; int width; int height; TYPE_2__* custom_ptr; int /*<<< orphan*/  writer; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_14__ {size_t size; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_2__ WebPMemoryWriter ;
struct TYPE_15__ {int lossless; } ;
typedef  TYPE_3__ WebPConfig ;
typedef  scalar_t__ (* Importer ) (TYPE_1__*,int /*<<< orphan*/  const*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  WEBP_PRESET_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,float) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  WebPMemoryWrite ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static size_t FUNC6(const uint8_t* rgba, int width, int height, int stride,
                     Importer import, float quality_factor, int lossless,
                     uint8_t** output) {
  WebPPicture pic;
  WebPConfig config;
  WebPMemoryWriter wrt;
  int ok;

  if (output == NULL) return 0;

  if (!FUNC0(&config, WEBP_PRESET_DEFAULT, quality_factor) ||
      !FUNC5(&pic)) {
    return 0;  // shouldn't happen, except if system installation is broken
  }

  config.lossless = !!lossless;
  pic.use_argb = !!lossless;
  pic.width = width;
  pic.height = height;
  pic.writer = WebPMemoryWrite;
  pic.custom_ptr = &wrt;
  FUNC3(&wrt);

  ok = import(&pic, rgba, stride) && FUNC1(&config, &pic);
  FUNC4(&pic);
  if (!ok) {
    FUNC2(&wrt);
    *output = NULL;
    return 0;
  }
  *output = wrt.mem;
  return wrt.size;
}