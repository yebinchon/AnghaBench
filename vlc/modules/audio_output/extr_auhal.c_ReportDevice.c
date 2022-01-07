
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef int UInt32 ;


 int aout_HotplugReport (int *,char*,char const*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
ReportDevice(audio_output_t *p_aout, UInt32 i_id, const char *name)
{
    char deviceid[10];
    sprintf(deviceid, "%i", i_id);

    aout_HotplugReport(p_aout, deviceid, name);
}
