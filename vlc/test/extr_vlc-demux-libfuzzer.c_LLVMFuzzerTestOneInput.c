
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int args ;
 int libvlc_demux_process_memory (int ,int *,int const*,size_t) ;
 int vlc ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
    libvlc_demux_process_memory(vlc, &args, data, size);
    return 0;
}
