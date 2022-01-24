#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WebPMuxError ;
struct TYPE_5__ {int /*<<< orphan*/  images_; } ;
typedef  TYPE_1__ WebPMux ;
typedef  int /*<<< orphan*/  WebPChunkId ;
typedef  int /*<<< orphan*/  WebPChunk ;
struct TYPE_6__ {int /*<<< orphan*/  tag; } ;
typedef  size_t CHUNK_INDEX ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_MUX_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  WEBP_MUX_OK ; 
 TYPE_2__* kChunks ; 

WebPMuxError FUNC5(const WebPMux* mux,
                              WebPChunkId id, int* num_elements) {
  if (mux == NULL || num_elements == NULL) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  if (FUNC2(id)) {
    *num_elements = FUNC4(mux->images_, id);
  } else {
    WebPChunk* const* chunk_list = FUNC3(mux, id);
    const CHUNK_INDEX idx = FUNC0(id);
    *num_elements = FUNC1(*chunk_list, kChunks[idx].tag);
  }

  return WEBP_MUX_OK;
}