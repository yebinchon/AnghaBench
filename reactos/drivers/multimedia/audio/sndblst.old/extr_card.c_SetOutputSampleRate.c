
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int DPRINT (char*) ;
 int SB_SET_OUTPUT_RATE ;
 int SB_WRITE_BYTE (int,int) ;

VOID SetOutputSampleRate(ULONG BasePort, ULONG SampleRate)
{

    DPRINT("Setting output sample rate\n");





    SB_WRITE_BYTE(BasePort, SB_SET_OUTPUT_RATE);
    SB_WRITE_BYTE(BasePort, SampleRate / 256);
    SB_WRITE_BYTE(BasePort, SampleRate % 256);
}
