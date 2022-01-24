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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WebPBitstreamFeatures ;
typedef  scalar_t__ VP8StatusCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,scalar_t__) ; 
 scalar_t__ VP8_STATUS_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

int FUNC4(const char* const in_file,
             const uint8_t** data, size_t* data_size,
             WebPBitstreamFeatures* bitstream) {
  VP8StatusCode status;
  WebPBitstreamFeatures local_features;
  if (!FUNC0(in_file, data, data_size)) return 0;

  if (bitstream == NULL) {
    bitstream = &local_features;
  }

  status = FUNC2(*data, *data_size, bitstream);
  if (status != VP8_STATUS_OK) {
    FUNC3((void*)*data);
    *data = NULL;
    *data_size = 0;
    FUNC1(in_file, status);
    return 0;
  }
  return 1;
}