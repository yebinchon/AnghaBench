#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef  TYPE_1__ WebPChunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 

size_t FUNC1(const WebPChunk* chunk_list) {
  size_t size = 0;
  while (chunk_list != NULL) {
    size += FUNC0(chunk_list);
    chunk_list = chunk_list->next_;
  }
  return size;
}