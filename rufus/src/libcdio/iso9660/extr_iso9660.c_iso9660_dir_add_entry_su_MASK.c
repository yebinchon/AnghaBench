#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {void* len; int /*<<< orphan*/ * str; } ;
struct TYPE_5__ {TYPE_1__ filename; int /*<<< orphan*/  volume_sequence_number; void* file_flags; int /*<<< orphan*/  recording_time; void* size; void* extent; void* length; } ;
typedef  TYPE_2__ iso9660_dir_t ;

/* Variables and functions */
 int ISO_BLOCKSIZE ; 
 scalar_t__ MAX_ISOPATHNAME ; 
 int FUNC0 (int,int) ; 
 unsigned int FUNC1 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 void* FUNC12 (int) ; 

void
FUNC13(void *dir,
                         const char filename[],
                         uint32_t extent,
                         uint32_t size,
                         uint8_t file_flags,
                         const void *su_data,
                         unsigned int su_size,
                         const time_t *entry_time)
{
  iso9660_dir_t *idr = dir;
  uint8_t *dir8 = dir;
  unsigned int offset = 0;
  uint32_t dsize = FUNC4(idr->size);
  int length, su_offset;
  struct tm temp_tm;
  FUNC2 (sizeof(iso9660_dir_t) == 33);

  if (!dsize && !idr->length)
    dsize = ISO_BLOCKSIZE; /* for when dir lacks '.' entry */

  FUNC2 (dsize > 0 && !(dsize % ISO_BLOCKSIZE));
  FUNC2 (dir != NULL);
  FUNC2 (extent > 17);
  FUNC2 (filename != NULL);
  FUNC2 (FUNC9(filename) <= MAX_ISOPATHNAME);

  length = sizeof(iso9660_dir_t);
  length += FUNC9(filename);
  length = FUNC0 (length, 2); /* pad to word boundary */
  su_offset = length;
  length += su_size;
  length = FUNC0 (length, 2); /* pad to word boundary again */

  /* find the last entry's end */
  {
    unsigned int ofs_last_rec = 0;

    offset = 0;
    while (offset < dsize)
      {
        if (!dir8[offset])
          {
            offset++;
            continue;
          }

        offset += dir8[offset];
        ofs_last_rec = offset;
      }

    FUNC2 (offset == dsize);

    offset = ofs_last_rec;
  }

  /* be sure we don't cross sectors boundaries */
  offset = FUNC1 (offset, length, ISO_BLOCKSIZE);
  offset -= length;

  FUNC2 (offset + length <= dsize);

  idr = (iso9660_dir_t *) &dir8[offset];

  FUNC2 (offset+length < dsize);

  FUNC8(idr, 0, length);

  idr->length = FUNC10(length);
  idr->extent = FUNC12(extent);
  idr->size = FUNC12(size);

  FUNC5(entry_time, &temp_tm);
  FUNC6 (&temp_tm, &(idr->recording_time));

  idr->file_flags = FUNC10(file_flags);

  idr->volume_sequence_number = FUNC11(1);

  idr->filename.len = FUNC10(FUNC9(filename)
                             ? FUNC9(filename) : 1); /* working hack! */

  FUNC7(&idr->filename.str[1], filename, FUNC3(idr->filename.len));
  if (su_size > 0 && su_data)
    FUNC7(&dir8[offset] + su_offset, su_data, su_size);
}