
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int wFormatTag; unsigned int nChannels; int nSamplesPerSec; int nAvgBytesPerSec; unsigned int nBlockAlign; unsigned int wBitsPerSample; unsigned int cbSize; int cb; } ;
typedef TYPE_2__ WAVEFORMATEX ;
struct TYPE_8__ {size_t format_count; TYPE_2__* formats; } ;
struct TYPE_10__ {TYPE_1__ rdpsnd; } ;
typedef int STREAM ;
typedef TYPE_3__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 scalar_t__ False ;
 int MAX_CBSIZE ;
 size_t MAX_FORMATS ;
 int RDPSND_NEGOTIATE ;
 scalar_t__ True ;
 int fprintf (int ,char*,int) ;
 int in_uint16_le (int ,unsigned int) ;
 int in_uint32_le (int ,int) ;
 int in_uint8a (int ,int ,int) ;
 int in_uint8s (int ,int) ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int) ;
 int out_uint32 (int ,int) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int) ;
 int rdpsnd_init_packet (TYPE_3__*,int,int) ;
 int rdpsnd_send (TYPE_3__*,int ) ;
 scalar_t__ s_check_rem (int ,int) ;
 int s_mark_end (int ) ;
 int stderr ;
 int wave_out_close () ;
 scalar_t__ wave_out_format_supported (TYPE_2__*) ;
 scalar_t__ wave_out_open () ;

__attribute__((used)) static void
rdpsnd_process_negotiate(RDPCLIENT * This, STREAM in)
{
 unsigned int in_format_count, i;
 WAVEFORMATEX *format;
 STREAM out;
 BOOL device_available = False;
 int readcnt;
 int discardcnt;

 in_uint8s(in, 14);
 in_uint16_le(in, in_format_count);
 in_uint8s(in, 4);

 if (wave_out_open())
 {
  wave_out_close();
  device_available = True;
 }

 This->rdpsnd.format_count = 0;
 if (s_check_rem(in, 18 * in_format_count))
 {
  for (i = 0; i < in_format_count; i++)
  {
   format = &This->rdpsnd.formats[This->rdpsnd.format_count];
   in_uint16_le(in, format->wFormatTag);
   in_uint16_le(in, format->nChannels);
   in_uint32_le(in, format->nSamplesPerSec);
   in_uint32_le(in, format->nAvgBytesPerSec);
   in_uint16_le(in, format->nBlockAlign);
   in_uint16_le(in, format->wBitsPerSample);
   in_uint16_le(in, format->cbSize);


   readcnt = format->cbSize;
   discardcnt = 0;
   if (format->cbSize > MAX_CBSIZE)
   {
    fprintf(stderr, "cbSize too large for buffer: %d\n",
     format->cbSize);
    readcnt = MAX_CBSIZE;
    discardcnt = format->cbSize - MAX_CBSIZE;
   }
   in_uint8a(in, format->cb, readcnt);
   in_uint8s(in, discardcnt);

   if (device_available && wave_out_format_supported(format))
   {
    This->rdpsnd.format_count++;
    if (This->rdpsnd.format_count == MAX_FORMATS)
     break;
   }
  }
 }

 out = rdpsnd_init_packet(This, RDPSND_NEGOTIATE | 0x200, 20 + 18 * This->rdpsnd.format_count);
 out_uint32_le(out, 3);
 out_uint32(out, 0xffffffff);
 out_uint32(out, 0);
 out_uint16(out, 0);

 out_uint16_le(out, This->rdpsnd.format_count);
 out_uint8(out, 0x95);
 out_uint16_le(out, 2);
 out_uint8(out, 0x77);

 for (i = 0; i < This->rdpsnd.format_count; i++)
 {
  format = &This->rdpsnd.formats[i];
  out_uint16_le(out, format->wFormatTag);
  out_uint16_le(out, format->nChannels);
  out_uint32_le(out, format->nSamplesPerSec);
  out_uint32_le(out, format->nAvgBytesPerSec);
  out_uint16_le(out, format->nBlockAlign);
  out_uint16_le(out, format->wBitsPerSample);
  out_uint16(out, 0);
 }

 s_mark_end(out);
 rdpsnd_send(This, out);
}
