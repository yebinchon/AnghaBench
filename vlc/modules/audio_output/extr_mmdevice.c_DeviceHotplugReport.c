
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef int LPCWSTR ;
typedef int IMMDevice ;


 char* DeviceGetFriendlyName (int *) ;
 char* FromWide (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_HotplugReport (int *,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static int DeviceHotplugReport(audio_output_t *aout, LPCWSTR wid,
                               IMMDevice *dev)
{
    char *id = FromWide(wid);
    if (!id)
        return VLC_EGENERIC;

    char *name = DeviceGetFriendlyName(dev);
    if (name == ((void*)0))
        name = id;

    aout_HotplugReport(aout, id, name);

    free(id);
    if (id != name)
        free(name);
    return VLC_SUCCESS;
}
