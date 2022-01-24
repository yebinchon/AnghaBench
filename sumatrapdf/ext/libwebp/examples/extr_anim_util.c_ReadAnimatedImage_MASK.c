#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__ WebPData ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  AnimatedImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ * const,int,char const*) ; 
 int FUNC5 (char const*,TYPE_1__*,int /*<<< orphan*/ * const,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC10(const char filename[], AnimatedImage* const image,
                      int dump_frames, const char dump_folder[]) {
  int ok = 0;
  WebPData webp_data;

  FUNC8(&webp_data);
  FUNC9(image, 0, sizeof(*image));

  if (!FUNC1(filename, &webp_data.bytes, &webp_data.size)) {
    FUNC6(stderr, "Error reading file: %s\n", (const W_CHAR*)filename);
    return 0;
  }

  if (FUNC3(&webp_data)) {
    ok = FUNC5(filename, &webp_data, image, dump_frames,
                          dump_folder);
  } else if (FUNC2(&webp_data)) {
    ok = FUNC4(filename, image, dump_frames, dump_folder);
  } else {
    FUNC6(stderr,
             "Unknown file type: %s. Supported file types are WebP and GIF\n",
             (const W_CHAR*)filename);
    ok = 0;
  }
  if (!ok) FUNC0(image);
  FUNC7(&webp_data);
  return ok;
}