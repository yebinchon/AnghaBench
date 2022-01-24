#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WebPInfoStatus ;
struct TYPE_8__ {int /*<<< orphan*/  quiet_; scalar_t__ show_summary_; } ;
typedef  TYPE_1__ WebPInfo ;
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  MemBuffer ;
typedef  int /*<<< orphan*/  ChunkData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__* const) ; 
 scalar_t__ FUNC6 (TYPE_1__* const) ; 
 scalar_t__ WEBP_INFO_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static WebPInfoStatus FUNC8(WebPInfo* const webp_info,
                                  const WebPData* webp_data) {
  ChunkData chunk_data;
  MemBuffer mem_buffer;
  WebPInfoStatus webp_info_status = WEBP_INFO_OK;

  FUNC0(&mem_buffer, webp_data);
  webp_info_status = FUNC3(webp_info, &mem_buffer);
  if (webp_info_status != WEBP_INFO_OK) goto Error;

  //  Loop through all the chunks. Terminate immediately in case of error.
  while (webp_info_status == WEBP_INFO_OK && FUNC1(&mem_buffer) > 0) {
    webp_info_status = FUNC2(webp_info, &mem_buffer, &chunk_data);
    if (webp_info_status != WEBP_INFO_OK) goto Error;
    webp_info_status = FUNC4(&chunk_data, webp_info);
  }
  if (webp_info_status != WEBP_INFO_OK) goto Error;
  if (webp_info->show_summary_) FUNC5(webp_info);

  //  Final check.
  webp_info_status = FUNC6(webp_info);

 Error:
  if (!webp_info->quiet_) {
    if (webp_info_status == WEBP_INFO_OK) {
      FUNC7("No error detected.\n");
    } else {
      FUNC7("Errors detected.\n");
    }
  }
  return webp_info_status;
}