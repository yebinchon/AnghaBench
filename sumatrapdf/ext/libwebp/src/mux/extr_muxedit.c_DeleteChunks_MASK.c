#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  WebPMuxError ;
struct TYPE_6__ {scalar_t__ tag_; struct TYPE_6__* next_; } ;
typedef  TYPE_1__ WebPChunk ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  WEBP_MUX_NOT_FOUND ; 
 int /*<<< orphan*/  WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 

__attribute__((used)) static WebPMuxError FUNC2(WebPChunk** chunk_list, uint32_t tag) {
  WebPMuxError err = WEBP_MUX_NOT_FOUND;
  FUNC1(chunk_list);
  while (*chunk_list) {
    WebPChunk* const chunk = *chunk_list;
    if (chunk->tag_ == tag) {
      *chunk_list = FUNC0(chunk);
      err = WEBP_MUX_OK;
    } else {
      chunk_list = &chunk->next_;
    }
  }
  return err;
}