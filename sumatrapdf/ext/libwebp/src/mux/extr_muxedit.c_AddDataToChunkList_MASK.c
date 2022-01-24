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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ WebPMuxError ;
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  WebPChunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ WEBP_MUX_OK ; 

__attribute__((used)) static WebPMuxError FUNC4(
    const WebPData* const data, int copy_data, uint32_t tag,
    WebPChunk** chunk_list) {
  WebPChunk chunk;
  WebPMuxError err;
  FUNC1(&chunk);
  err = FUNC0(&chunk, data, copy_data, tag);
  if (err != WEBP_MUX_OK) goto Err;
  err = FUNC3(&chunk, chunk_list);
  if (err != WEBP_MUX_OK) goto Err;
  return WEBP_MUX_OK;
 Err:
  FUNC2(&chunk);
  return err;
}