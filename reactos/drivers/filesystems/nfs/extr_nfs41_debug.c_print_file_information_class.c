
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char * print_file_information_class(int InfoClass)
{
    switch(InfoClass) {
        case 149:
            return (unsigned char *)"FileBothDirectoryInformation";
        case 147:
            return (unsigned char *)"FileDirectoryInformation";
        case 143:
            return (unsigned char *)"FileFullDirectoryInformation";
        case 142:
            return (unsigned char *)"FileIdBothDirectoryInformation";
        case 141:
            return (unsigned char *)"FileIdFullDirectoryInformation";
        case 137:
            return (unsigned char *)"FileNamesInformation";
        case 135:
            return (unsigned char *)"FileObjectIdInformation";
        case 133:
            return (unsigned char *)"FileQuotaInformation";
        case 131:
            return (unsigned char *)"FileReparsePointInformation";
        case 153:
            return (unsigned char *)"FileAllInformation";
        case 151:
            return (unsigned char *)"FileAttributeTagInformation";
        case 150:
            return (unsigned char *)"FileBasicInformation";
        case 148:
            return (unsigned char *)"FileCompressionInformation";
        case 145:
            return (unsigned char *)"FileEaInformation";
        case 140:
            return (unsigned char *)"FileInternalInformation";
        case 138:
            return (unsigned char *)"FileNameInformation";
        case 136:
            return (unsigned char *)"FileNetworkOpenInformation";
        case 134:
            return (unsigned char *)"FilePositionInformation";
        case 130:
            return (unsigned char *)"FileStandardInformation";
        case 129:
            return (unsigned char *)"FileStreamInformation";
        case 152:
            return (unsigned char *)"FileAllocationInformation";
        case 146:
            return (unsigned char *)"FileDispositionInformation";
        case 144:
            return (unsigned char *)"FileEndOfFileInformation";
        case 139:
            return (unsigned char *)"FileLinkInformation";
        case 132:
            return (unsigned char *)"FileRenameInformation";
        case 128:
            return (unsigned char *)"FileValidDataLengthInformation";
        default:
            return (unsigned char *)"UNKNOWN";
    }
}
