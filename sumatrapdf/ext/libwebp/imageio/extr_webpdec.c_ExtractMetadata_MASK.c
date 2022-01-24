#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  WebPDemuxer ;
struct TYPE_10__ {size_t member_1; int /*<<< orphan*/  const* const member_0; } ;
typedef  TYPE_2__ WebPData ;
struct TYPE_9__ {int /*<<< orphan*/  size; scalar_t__ bytes; } ;
struct TYPE_11__ {TYPE_1__ chunk; } ;
typedef  TYPE_3__ WebPChunkIterator ;
struct TYPE_12__ {int /*<<< orphan*/  xmp; int /*<<< orphan*/  exif; int /*<<< orphan*/  iccp; } ;
typedef  TYPE_4__ Metadata ;

/* Variables and functions */
 int EXIF_FLAG ; 
 int ICCP_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WEBP_FF_FORMAT_FLAGS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,char*,int,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int XMP_FLAG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const uint8_t* const data, size_t data_size,
                           Metadata* const metadata) {
  WebPData webp_data = { data, data_size };
  WebPDemuxer* const demux = FUNC1(&webp_data);
  WebPChunkIterator chunk_iter;
  uint32_t flags;

  if (demux == NULL) return 0;
  FUNC6(metadata != NULL);

  flags = FUNC4(demux, WEBP_FF_FORMAT_FLAGS);

  if ((flags & ICCP_FLAG) && FUNC3(demux, "ICCP", 1, &chunk_iter)) {
    FUNC0((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->iccp);
    FUNC5(&chunk_iter);
  }
  if ((flags & EXIF_FLAG) && FUNC3(demux, "EXIF", 1, &chunk_iter)) {
    FUNC0((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->exif);
    FUNC5(&chunk_iter);
  }
  if ((flags & XMP_FLAG) && FUNC3(demux, "XMP ", 1, &chunk_iter)) {
    FUNC0((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->xmp);
    FUNC5(&chunk_iter);
  }
  FUNC2(demux);
  return 1;
}