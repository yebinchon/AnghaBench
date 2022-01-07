
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int lsn_t ;
struct TYPE_3__ {int i_fuzzy_offset; int i_datastart; int stream; scalar_t__ i_framesize; } ;
typedef TYPE_1__ iso9660_t ;
typedef int int64_t ;


 int SEEK_SET ;
 long cdio_stream_read (int ,void*,int ,long) ;
 long cdio_stream_seek (int ,int,int ) ;

__attribute__((used)) static long int
iso9660_seek_read_framesize (const iso9660_t *p_iso, void *ptr,
        lsn_t start, long int size,
        uint16_t i_framesize)
{
  long int ret;
  int64_t i_byte_offset;

  if (!p_iso) return 0;
  i_byte_offset = (start * (int64_t)(p_iso->i_framesize))
    + p_iso->i_fuzzy_offset + p_iso->i_datastart;

  ret = cdio_stream_seek (p_iso->stream, i_byte_offset, SEEK_SET);
  if (ret!=0) return 0;
  return cdio_stream_read (p_iso->stream, ptr, i_framesize, size);
}
