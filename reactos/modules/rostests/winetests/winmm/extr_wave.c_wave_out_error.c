
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef scalar_t__ MMRESULT ;


 scalar_t__ MMSYSERR_NOERROR ;
 char* mmsys_error (scalar_t__) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ waveOutGetErrorTextA (scalar_t__,char*,int) ;

const char* wave_out_error(MMRESULT error)
{
    static char msg[1024];
    static char long_msg[1100];
    MMRESULT rc;

    rc = waveOutGetErrorTextA(error, msg, sizeof(msg));
    if (rc != MMSYSERR_NOERROR)
        sprintf(long_msg, "waveOutGetErrorTextA(%x) failed with error %x", error, rc);
    else
        sprintf(long_msg, "%s(%s)", mmsys_error(error), msg);
    return long_msg;
}
