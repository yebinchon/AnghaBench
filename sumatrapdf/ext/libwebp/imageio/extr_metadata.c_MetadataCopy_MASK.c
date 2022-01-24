#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * bytes; } ;
typedef  TYPE_1__ MetadataPayload ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

int FUNC2(const char* metadata, size_t metadata_len,
                 MetadataPayload* const payload) {
  if (metadata == NULL || metadata_len == 0 || payload == NULL) return 0;
  payload->bytes = (uint8_t*)FUNC0(metadata_len);
  if (payload->bytes == NULL) return 0;
  payload->size = metadata_len;
  FUNC1(payload->bytes, metadata, metadata_len);
  return 1;
}