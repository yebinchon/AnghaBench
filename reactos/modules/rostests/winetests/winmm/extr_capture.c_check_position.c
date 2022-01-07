
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mmtime ;
struct TYPE_4__ {scalar_t__ wType; } ;
typedef TYPE_1__ MMTIME ;
typedef scalar_t__ MMRESULT ;
typedef int LPWAVEFORMATEX ;
typedef int HWAVEIN ;
typedef scalar_t__ DWORD ;


 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ TIME_BYTES ;
 scalar_t__ TIME_MIDI ;
 scalar_t__ TIME_MS ;
 scalar_t__ TIME_SAMPLES ;
 scalar_t__ TIME_SMPTE ;
 scalar_t__ TIME_TICKS ;
 int bytes_to_ms (scalar_t__,int ) ;
 int bytes_to_samples (scalar_t__,int ) ;
 int dev_name (int) ;
 int ok (int,char*,int ,...) ;
 scalar_t__ time_to_bytes (TYPE_1__*,int ) ;
 int trace (char*,int ,int ) ;
 scalar_t__ waveInGetPosition (int ,TYPE_1__*,int) ;
 int wave_in_error (scalar_t__) ;
 int wave_time_format (scalar_t__) ;
 int winetest_debug ;

__attribute__((used)) static void check_position(int device, HWAVEIN win, DWORD bytes,
                           LPWAVEFORMATEX pwfx )
{
    MMTIME mmtime;
    MMRESULT rc;
    DWORD returned;

    mmtime.wType = TIME_BYTES;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_BYTES && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_BYTES not supported, returned %s\n",
              dev_name(device),wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): returned %d bytes, "
       "should be %d\n", dev_name(device), returned, bytes);

    mmtime.wType = TIME_SAMPLES;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_SAMPLES && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_SAMPLES not supported, "
              "returned %s\n",dev_name(device),wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): returned %d samples, "
       "should be %d\n", dev_name(device), bytes_to_samples(returned, pwfx),
       bytes_to_samples(bytes, pwfx));

    mmtime.wType = TIME_MS;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_MS && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_MS not supported, returned %s\n",
              dev_name(device), wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): returned %d ms, "
       "should be %d\n", dev_name(device), bytes_to_ms(returned, pwfx),
       bytes_to_ms(bytes, pwfx));

    mmtime.wType = TIME_SMPTE;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_SMPTE && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_SMPTE not supported, returned %s\n",
              dev_name(device),wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): SMPTE test failed\n",
       dev_name(device));

    mmtime.wType = TIME_MIDI;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_MIDI && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_MIDI not supported, returned %s\n",
              dev_name(device),wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): MIDI test failed\n",
       dev_name(device));

    mmtime.wType = TIME_TICKS;
    rc=waveInGetPosition(win, &mmtime, sizeof(mmtime));
    ok(rc==MMSYSERR_NOERROR,
       "waveInGetPosition(%s): rc=%s\n",dev_name(device),wave_in_error(rc));
    if (mmtime.wType != TIME_TICKS && winetest_debug > 1)
        trace("waveInGetPosition(%s): TIME_TICKS not supported, returned %s\n",
              dev_name(device),wave_time_format(mmtime.wType));
    returned = time_to_bytes(&mmtime, pwfx);
    ok(returned == bytes, "waveInGetPosition(%s): TICKS test failed\n",
       dev_name(device));
}
