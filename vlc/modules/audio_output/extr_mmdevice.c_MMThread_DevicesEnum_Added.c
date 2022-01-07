
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef int LPCWSTR ;
typedef int IMMDevice ;


 int DeviceHotplugReport (int *,int ,int *) ;

__attribute__((used)) static void MMThread_DevicesEnum_Added(void *data, LPCWSTR wid, IMMDevice *dev)
{
    audio_output_t *aout = data;

    DeviceHotplugReport(aout, wid, dev);
}
