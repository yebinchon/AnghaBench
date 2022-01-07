
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WebPGetDecoderVersion () ;
 int WebPGetDemuxVersion () ;

void GetAnimatedImageVersions(int* const decoder_version,
                              int* const demux_version) {
  *decoder_version = WebPGetDecoderVersion();
  *demux_version = WebPGetDemuxVersion();
}
