
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char *print_fs_information_class(int InfoClass)
{
    switch (InfoClass) {
        case 135:
            return (unsigned char *)"FileFsAttributeInformation";
        case 134:
            return (unsigned char *)"FileFsControlInformation";
        case 133:
            return (unsigned char *)"FileFsDeviceInformation";
        case 132:
            return (unsigned char *)"FileFsDriverPathInformation";
        case 131:
            return (unsigned char *)"FileFsFullSizeInformation";
        case 130:
            return (unsigned char *)"FileFsObjectIdInformation";
        case 129:
            return (unsigned char *)"FileFsSizeInformation";
        case 128:
            return (unsigned char *)"FileFsVolumeInformation";
        default:
            return (unsigned char *)"UNKNOWN";
    }
}
