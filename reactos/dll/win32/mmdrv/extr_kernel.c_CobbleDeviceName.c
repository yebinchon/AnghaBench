
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int PWCHAR ;
typedef int MMRESULT ;
typedef int DeviceType ;


 int AUX_DEVICE_NAME ;

 int MAX_DEVICE_NAME_LENGTH ;
 int MIDI_IN_DEVICE_NAME ;
 int MIDI_OUT_DEVICE_NAME ;
 int MMSYSERR_BADDEVICEID ;
 int MMSYSERR_NOERROR ;


 int WAVE_IN_DEVICE_NAME ;
 int WAVE_OUT_DEVICE_NAME ;


 int strlen (char*) ;
 int wsprintf (int ,char*,int *,...) ;

MMRESULT
CobbleDeviceName(
    DeviceType device_type,
    UINT device_id,
    PWCHAR out_device_name)
{
    WCHAR base_device_name[MAX_DEVICE_NAME_LENGTH];



    switch ( device_type )
    {
        case 128 :
            wsprintf(base_device_name, L"%ls", WAVE_OUT_DEVICE_NAME);
            break;

        case 129 :
            wsprintf(base_device_name, L"%ls", WAVE_IN_DEVICE_NAME);
            break;

        case 130 :
            wsprintf(base_device_name, L"%ls", MIDI_OUT_DEVICE_NAME);
            break;

        case 131 :
            wsprintf(base_device_name, L"%ls", MIDI_IN_DEVICE_NAME);
            break;

        case 132 :
            wsprintf(base_device_name, L"%ls", AUX_DEVICE_NAME);
            break;

        default :
            return MMSYSERR_BADDEVICEID;
    };



    wsprintf(out_device_name,
             L"\\\\.%ls%d",
             base_device_name + strlen("\\Device"),
             device_id);

    return MMSYSERR_NOERROR;
}
