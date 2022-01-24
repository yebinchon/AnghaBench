#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t const uint32_t ;
struct TYPE_6__ {size_t size; int /*<<< orphan*/  bytes; } ;
struct TYPE_7__ {scalar_t__ tag_; TYPE_1__ data_; } ;
typedef  TYPE_2__ WebPChunk ;
struct TYPE_8__ {scalar_t__ tag; } ;

/* Variables and functions */
 size_t CHUNK_HEADER_SIZE ; 
 int FUNC0 (TYPE_2__ const* const) ; 
 size_t IDX_ANMF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,size_t const) ; 
 int TAG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* kChunks ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static uint8_t* FUNC4(const WebPChunk* const header,
                                 size_t total_size, uint8_t* dst) {
  const size_t header_size = header->data_.size;
  const size_t offset_to_next = total_size - CHUNK_HEADER_SIZE;
  FUNC2(header->tag_ == kChunks[IDX_ANMF].tag);
  FUNC1(dst + 0, header->tag_);
  FUNC1(dst + TAG_SIZE, (uint32_t)offset_to_next);
  FUNC2(header_size == (uint32_t)header_size);
  FUNC3(dst + CHUNK_HEADER_SIZE, header->data_.bytes, header_size);
  if (header_size & 1) {
    dst[CHUNK_HEADER_SIZE + header_size] = 0;  // Add padding.
  }
  return dst + FUNC0(header);
}