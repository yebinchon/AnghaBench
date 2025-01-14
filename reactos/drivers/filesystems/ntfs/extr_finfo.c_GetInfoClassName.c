
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCSTR ;
typedef size_t FILE_INFORMATION_CLASS ;



const PCSTR
GetInfoClassName(FILE_INFORMATION_CLASS infoClass)
{
    const PCSTR fileInfoClassNames[] = { "???????",
        "FileDirectoryInformation",
        "FileFullDirectoryInformation",
        "FileBothDirectoryInformation",
        "FileBasicInformation",
        "FileStandardInformation",
        "FileInternalInformation",
        "FileEaInformation",
        "FileAccessInformation",
        "FileNameInformation",
        "FileRenameInformation",
        "FileLinkInformation",
        "FileNamesInformation",
        "FileDispositionInformation",
        "FilePositionInformation",
        "FileFullEaInformation",
        "FileModeInformation",
        "FileAlignmentInformation",
        "FileAllInformation",
        "FileAllocationInformation",
        "FileEndOfFileInformation",
        "FileAlternateNameInformation",
        "FileStreamInformation",
        "FilePipeInformation",
        "FilePipeLocalInformation",
        "FilePipeRemoteInformation",
        "FileMailslotQueryInformation",
        "FileMailslotSetInformation",
        "FileCompressionInformation",
        "FileObjectIdInformation",
        "FileCompletionInformation",
        "FileMoveClusterInformation",
        "FileQuotaInformation",
        "FileReparsePointInformation",
        "FileNetworkOpenInformation",
        "FileAttributeTagInformation",
        "FileTrackingInformation",
        "FileIdBothDirectoryInformation",
        "FileIdFullDirectoryInformation",
        "FileValidDataLengthInformation",
        "FileShortNameInformation",
        "FileIoCompletionNotificationInformation",
        "FileIoStatusBlockRangeInformation",
        "FileIoPriorityHintInformation",
        "FileSfioReserveInformation",
        "FileSfioVolumeInformation",
        "FileHardLinkInformation",
        "FileProcessIdsUsingFileInformation",
        "FileNormalizedNameInformation",
        "FileNetworkPhysicalNameInformation",
        "FileIdGlobalTxDirectoryInformation",
        "FileIsRemoteDeviceInformation",
        "FileAttributeCacheInformation",
        "FileNumaNodeInformation",
        "FileStandardLinkInformation",
        "FileRemoteProtocolInformation",
        "FileReplaceCompletionInformation",
        "FileMaximumInformation",
        "FileDirectoryInformation",
        "FileFullDirectoryInformation",
        "FileBothDirectoryInformation",
        "FileBasicInformation",
        "FileStandardInformation",
        "FileInternalInformation",
        "FileEaInformation",
        "FileAccessInformation",
        "FileNameInformation",
        "FileRenameInformation",
        "FileLinkInformation",
        "FileNamesInformation",
        "FileDispositionInformation",
        "FilePositionInformation",
        "FileFullEaInformation",
        "FileModeInformation",
        "FileAlignmentInformation",
        "FileAllInformation",
        "FileAllocationInformation",
        "FileEndOfFileInformation",
        "FileAlternateNameInformation",
        "FileStreamInformation",
        "FilePipeInformation",
        "FilePipeLocalInformation",
        "FilePipeRemoteInformation",
        "FileMailslotQueryInformation",
        "FileMailslotSetInformation",
        "FileCompressionInformation",
        "FileObjectIdInformation",
        "FileCompletionInformation",
        "FileMoveClusterInformation",
        "FileQuotaInformation",
        "FileReparsePointInformation",
        "FileNetworkOpenInformation",
        "FileAttributeTagInformation",
        "FileTrackingInformation",
        "FileIdBothDirectoryInformation",
        "FileIdFullDirectoryInformation",
        "FileValidDataLengthInformation",
        "FileShortNameInformation",
        "FileIoCompletionNotificationInformation",
        "FileIoStatusBlockRangeInformation",
        "FileIoPriorityHintInformation",
        "FileSfioReserveInformation",
        "FileSfioVolumeInformation",
        "FileHardLinkInformation",
        "FileProcessIdsUsingFileInformation",
        "FileNormalizedNameInformation",
        "FileNetworkPhysicalNameInformation",
        "FileIdGlobalTxDirectoryInformation",
        "FileIsRemoteDeviceInformation",
        "FileAttributeCacheInformation",
        "FileNumaNodeInformation",
        "FileStandardLinkInformation",
        "FileRemoteProtocolInformation",
        "FileReplaceCompletionInformation",
        "FileMaximumInformation" };
    return fileInfoClassNames[infoClass];
}
