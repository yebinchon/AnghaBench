
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int WCHAR ;
typedef int WAVEFORMATEX ;
typedef int VOID ;
typedef int UINT ;
struct TYPE_36__ {int cbSize; int * DevicePath; } ;
struct TYPE_35__ {int cbSize; scalar_t__ Reserved; } ;
struct TYPE_34__ {int cbSize; scalar_t__ Reserved; } ;
struct TYPE_33__ {int FormatSize; int SampleSize; int Specifier; int SubFormat; int MajorFormat; scalar_t__ Reserved; int Flags; } ;
struct TYPE_32__ {int nChannels; int nSamplesPerSec; int nBlockAlign; int nAvgBytesPerSec; int wBitsPerSample; scalar_t__ cbSize; int wFormatTag; } ;
struct TYPE_31__ {int PrioritySubClass; int PriorityClass; } ;
struct TYPE_30__ {scalar_t__ Flags; int Id; int Set; } ;
struct TYPE_29__ {scalar_t__ Flags; int Id; int Set; } ;
struct TYPE_28__ {int Numerator; int Denominator; } ;
struct TYPE_27__ {TYPE_6__ DataFormat; TYPE_5__ WaveFormatEx; } ;
struct TYPE_26__ {TYPE_4__ Priority; int * PinToHandle; scalar_t__ PinId; TYPE_3__ Medium; TYPE_2__ Interface; } ;
struct TYPE_25__ {int Flags; int Id; int Set; } ;
struct TYPE_24__ {int* Data; int FrameExtent; int DataUsed; int Size; TYPE_1__ PresentationTime; } ;
typedef int State ;
typedef TYPE_7__ SP_DEVINFO_DATA ;
typedef int SP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef TYPE_8__ SP_DEVICE_INTERFACE_DATA ;
typedef TYPE_9__* PSP_DEVICE_INTERFACE_DETAIL_DATA ;
typedef int* PSHORT ;
typedef TYPE_10__* PKSSTREAM_HEADER ;
typedef TYPE_11__* PKSPROPERTY ;
typedef TYPE_12__* PKSPIN_CONNECT ;
typedef TYPE_13__* PKSDATAFORMAT_WAVEFORMATEX ;
typedef int NTSTATUS ;
typedef char* LPWSTR ;
typedef int KSSTREAM_HEADER ;
typedef TYPE_10__ KSSTATE ;
typedef int KSPROPERTY ;
typedef int KSPIN_CONNECT ;
typedef int KSDATAFORMAT_WAVEFORMATEX ;
typedef int KSDATAFORMAT ;
typedef int InterfaceData ;
typedef int HDEVINFO ;
typedef int HANDLE ;
typedef int DeviceData ;
typedef int DWORD ;
typedef int BOOL ;


 int CategoryGuid ;
 int CloseHandle (int) ;
 int CreateFile (int *,int,int ,int *,int ,int ,int *) ;
 int DIGCF_DEVICEINTERFACE ;
 int DeviceIoControl (int,int ,TYPE_11__*,int,TYPE_10__*,int,int*,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int IOCTL_KS_PROPERTY ;
 int IOCTL_KS_WRITE_STREAM ;
 int KSDATAFORMAT_ATTRIBUTES ;
 int KSDATAFORMAT_SPECIFIER_WAVEFORMATEX ;
 int KSDATAFORMAT_SUBTYPE_PCM ;
 int KSDATAFORMAT_TYPE_AUDIO ;
 int KSINTERFACESETID_Standard ;
 int KSINTERFACE_STANDARD_STREAMING ;
 int KSMEDIUMSETID_Standard ;
 int KSMEDIUM_TYPE_ANYINSTANCE ;
 int KSPRIORITY_NORMAL ;
 int KSPROPERTY_CONNECTION_STATE ;
 int KSPROPERTY_TYPE_SET ;
 int KSPROPSETID_Connection ;
 TYPE_10__ KSSTATE_RUN ;
 TYPE_10__ KSSTATE_STOP ;
 int KsCreatePin (int,TYPE_12__*,int,int*) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int SetupDiDestroyDeviceInfoList (int ) ;
 int SetupDiEnumDeviceInterfaces (int ,int *,int *,int,TYPE_8__*) ;
 int SetupDiGetClassDevs (int *,int *,int *,int ) ;
 int SetupDiGetDeviceInterfaceDetail (int ,TYPE_8__*,TYPE_9__*,int,int *,TYPE_7__*) ;
 int WAVE_FORMAT_PCM ;
 double _2pi ;
 int printf (char*,int,...) ;
 int sin (double) ;
 int wprintf (char*,int,char*) ;

VOID
TestKs()
{
    SP_DEVICE_INTERFACE_DATA InterfaceData;
    SP_DEVINFO_DATA DeviceData;
    PSP_DEVICE_INTERFACE_DETAIL_DATA DetailData;
    HDEVINFO DeviceHandle;
    PKSDATAFORMAT_WAVEFORMATEX DataFormat;
    PKSPIN_CONNECT PinConnect;
    PKSSTREAM_HEADER Packet;
    PKSPROPERTY Property;
    KSSTATE State;
    DWORD Length;
    HANDLE FilterHandle;
    HANDLE PinHandle;
    PSHORT SoundBuffer;
    UINT i = 0;
    BOOL Result;
    NTSTATUS Status;




    DeviceHandle = SetupDiGetClassDevs(&CategoryGuid,
                                       ((void*)0),
                                       ((void*)0),
                                       DIGCF_DEVICEINTERFACE);

   printf("DeviceHandle %p\n", DeviceHandle);




    InterfaceData.cbSize = sizeof(InterfaceData);
    InterfaceData.Reserved = 0;
    Result = SetupDiEnumDeviceInterfaces(DeviceHandle,
                                ((void*)0),
                                &CategoryGuid,
                                1,
                                &InterfaceData);

   printf("SetupDiEnumDeviceInterfaces %u Error %ld\n", Result, GetLastError());




    Length = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA) + MAX_PATH * sizeof(WCHAR);
    DetailData = (PSP_DEVICE_INTERFACE_DETAIL_DATA)HeapAlloc(GetProcessHeap(),
                                                             0,
                                                             Length);
    DetailData->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
    DeviceData.cbSize = sizeof(DeviceData);
    DeviceData.Reserved = 0;
    Result = SetupDiGetDeviceInterfaceDetail(DeviceHandle,
                                    &InterfaceData,
                                    DetailData,
                                    Length,
                                    ((void*)0),
                                    &DeviceData);

    wprintf(L"SetupDiGetDeviceInterfaceDetail %u Path DetailData %s\n", Result, (LPWSTR)&DetailData->DevicePath[0]);




    FilterHandle = CreateFile(DetailData->DevicePath,
                              GENERIC_READ | GENERIC_WRITE,
                              0,
                              ((void*)0),
                              OPEN_EXISTING,
                              FILE_ATTRIBUTE_NORMAL,
                              ((void*)0));

    printf("Handle %p\n", FilterHandle);




    SetupDiDestroyDeviceInfoList(DeviceHandle);




    Length = sizeof(KSPIN_CONNECT) + sizeof(KSDATAFORMAT_WAVEFORMATEX);
 printf("Length %ld KSPIN %Iu DATAFORMAT %Iu\n", Length, sizeof(KSPIN_CONNECT), sizeof(KSDATAFORMAT_WAVEFORMATEX));
    PinConnect = (PKSPIN_CONNECT)HeapAlloc(GetProcessHeap(), 0, Length);
    DataFormat = (PKSDATAFORMAT_WAVEFORMATEX)(PinConnect + 1);




    PinConnect->Interface.Set = KSINTERFACESETID_Standard;
    PinConnect->Interface.Id = KSINTERFACE_STANDARD_STREAMING;
    PinConnect->Interface.Flags = 0;
    PinConnect->Medium.Set = KSMEDIUMSETID_Standard;
    PinConnect->Medium.Id = KSMEDIUM_TYPE_ANYINSTANCE;
    PinConnect->Medium.Flags = 0;
    PinConnect->PinId = 0;
    PinConnect->PinToHandle = ((void*)0);
    PinConnect->Priority.PriorityClass = KSPRIORITY_NORMAL;
    PinConnect->Priority.PrioritySubClass = 1;




    DataFormat->WaveFormatEx.wFormatTag = WAVE_FORMAT_PCM;
    DataFormat->WaveFormatEx.nChannels = 2;
    DataFormat->WaveFormatEx.nSamplesPerSec = 48000;
    DataFormat->WaveFormatEx.nBlockAlign = 4;
    DataFormat->WaveFormatEx.nAvgBytesPerSec = 48000 * 4;
    DataFormat->WaveFormatEx.wBitsPerSample = 16;
    DataFormat->WaveFormatEx.cbSize = 0;
    DataFormat->DataFormat.FormatSize = sizeof(KSDATAFORMAT) +
                                        sizeof(WAVEFORMATEX);
    DataFormat->DataFormat.Flags = KSDATAFORMAT_ATTRIBUTES;
    DataFormat->DataFormat.Reserved = 0;
    DataFormat->DataFormat.MajorFormat = KSDATAFORMAT_TYPE_AUDIO;
    DataFormat->DataFormat.SubFormat = KSDATAFORMAT_SUBTYPE_PCM;
    DataFormat->DataFormat.Specifier = KSDATAFORMAT_SPECIFIER_WAVEFORMATEX;
    DataFormat->DataFormat.SampleSize = 4;




    Status = KsCreatePin(FilterHandle, PinConnect, GENERIC_WRITE, &PinHandle);

    printf("PinHandle %p Status %lx\n", PinHandle, Status);




    Length = 48000 * 4;
    SoundBuffer = (PSHORT)HeapAlloc(GetProcessHeap(), 0, Length);




    while (i < Length / 2)
    {




        SoundBuffer[i] = 0x7FFF * sin(0.5 * (i - 1) * 500 * _2pi / 48000);
        i++;
        SoundBuffer[i] = 0x7FFF * sin((0.5 * i - 2) * 500 * _2pi / 48000);
        i++;
    }




    Packet = (PKSSTREAM_HEADER)HeapAlloc(GetProcessHeap(),
                                         HEAP_ZERO_MEMORY,
                                         sizeof(KSSTREAM_HEADER));
    Packet->Data = SoundBuffer;
    Packet->FrameExtent = Length;
    Packet->DataUsed = Length;
    Packet->Size = sizeof(KSSTREAM_HEADER);
    Packet->PresentationTime.Numerator = 1;
    Packet->PresentationTime.Denominator = 1;




    Property = (PKSPROPERTY)HeapAlloc(GetProcessHeap(), 0, sizeof(KSPROPERTY));
    Property->Set = KSPROPSETID_Connection;
    Property->Id = KSPROPERTY_CONNECTION_STATE;
    Property->Flags = KSPROPERTY_TYPE_SET;




    State = KSSTATE_RUN;
    DeviceIoControl(PinHandle,
                    IOCTL_KS_PROPERTY,
                    Property,
                    sizeof(KSPROPERTY),
                    &State,
                    sizeof(State),
                    &Length,
                    ((void*)0));




    DeviceIoControl(PinHandle,
                    IOCTL_KS_WRITE_STREAM,
                    ((void*)0),
                    0,
                    Packet,
                    Packet->Size,
                    &Length,
                    ((void*)0));




    State = KSSTATE_STOP;
    DeviceIoControl(PinHandle,
                    IOCTL_KS_PROPERTY,
                    Property,
                    sizeof(KSPROPERTY),
                    &State,
                    sizeof(State),
                    &Length,
                    ((void*)0));

    CloseHandle(PinHandle);
    CloseHandle(FilterHandle);
}
