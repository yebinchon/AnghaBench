
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int WebPDemuxer ;
struct TYPE_10__ {size_t member_1; int const* const member_0; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_9__ {int size; scalar_t__ bytes; } ;
struct TYPE_11__ {TYPE_1__ chunk; } ;
typedef TYPE_3__ WebPChunkIterator ;
struct TYPE_12__ {int xmp; int exif; int iccp; } ;
typedef TYPE_4__ Metadata ;


 int EXIF_FLAG ;
 int ICCP_FLAG ;
 int MetadataCopy (char const*,int ,int *) ;
 int WEBP_FF_FORMAT_FLAGS ;
 int * WebPDemux (TYPE_2__*) ;
 int WebPDemuxDelete (int * const) ;
 scalar_t__ WebPDemuxGetChunk (int * const,char*,int,TYPE_3__*) ;
 int WebPDemuxGetI (int * const,int ) ;
 int WebPDemuxReleaseChunkIterator (TYPE_3__*) ;
 int XMP_FLAG ;
 int assert (int ) ;

__attribute__((used)) static int ExtractMetadata(const uint8_t* const data, size_t data_size,
                           Metadata* const metadata) {
  WebPData webp_data = { data, data_size };
  WebPDemuxer* const demux = WebPDemux(&webp_data);
  WebPChunkIterator chunk_iter;
  uint32_t flags;

  if (demux == ((void*)0)) return 0;
  assert(metadata != ((void*)0));

  flags = WebPDemuxGetI(demux, WEBP_FF_FORMAT_FLAGS);

  if ((flags & ICCP_FLAG) && WebPDemuxGetChunk(demux, "ICCP", 1, &chunk_iter)) {
    MetadataCopy((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->iccp);
    WebPDemuxReleaseChunkIterator(&chunk_iter);
  }
  if ((flags & EXIF_FLAG) && WebPDemuxGetChunk(demux, "EXIF", 1, &chunk_iter)) {
    MetadataCopy((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->exif);
    WebPDemuxReleaseChunkIterator(&chunk_iter);
  }
  if ((flags & XMP_FLAG) && WebPDemuxGetChunk(demux, "XMP ", 1, &chunk_iter)) {
    MetadataCopy((const char*)chunk_iter.chunk.bytes, chunk_iter.chunk.size,
                 &metadata->xmp);
    WebPDemuxReleaseChunkIterator(&chunk_iter);
  }
  WebPDemuxDelete(demux);
  return 1;
}
