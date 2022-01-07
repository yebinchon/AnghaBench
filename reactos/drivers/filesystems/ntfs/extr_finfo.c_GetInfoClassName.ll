; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_GetInfoClassName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_GetInfoClassName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"???????\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"FileDirectoryInformation\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"FileFullDirectoryInformation\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"FileBothDirectoryInformation\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"FileBasicInformation\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"FileStandardInformation\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"FileInternalInformation\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"FileEaInformation\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"FileAccessInformation\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"FileNameInformation\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"FileRenameInformation\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"FileLinkInformation\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"FileNamesInformation\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"FileDispositionInformation\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"FilePositionInformation\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"FileFullEaInformation\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"FileModeInformation\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"FileAlignmentInformation\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"FileAllInformation\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"FileAllocationInformation\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"FileEndOfFileInformation\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"FileAlternateNameInformation\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"FileStreamInformation\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"FilePipeInformation\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"FilePipeLocalInformation\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"FilePipeRemoteInformation\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"FileMailslotQueryInformation\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"FileMailslotSetInformation\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"FileCompressionInformation\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"FileObjectIdInformation\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"FileCompletionInformation\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"FileMoveClusterInformation\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"FileQuotaInformation\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"FileReparsePointInformation\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"FileNetworkOpenInformation\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"FileAttributeTagInformation\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"FileTrackingInformation\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"FileIdBothDirectoryInformation\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"FileIdFullDirectoryInformation\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"FileValidDataLengthInformation\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"FileShortNameInformation\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"FileIoCompletionNotificationInformation\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"FileIoStatusBlockRangeInformation\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"FileIoPriorityHintInformation\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"FileSfioReserveInformation\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"FileSfioVolumeInformation\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"FileHardLinkInformation\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"FileProcessIdsUsingFileInformation\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"FileNormalizedNameInformation\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"FileNetworkPhysicalNameInformation\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"FileIdGlobalTxDirectoryInformation\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"FileIsRemoteDeviceInformation\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"FileAttributeCacheInformation\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"FileNumaNodeInformation\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"FileStandardLinkInformation\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"FileRemoteProtocolInformation\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"FileReplaceCompletionInformation\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"FileMaximumInformation\00", align 1
@__const.GetInfoClassName.fileInfoClassNames = private unnamed_addr constant [115 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetInfoClassName(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [115 x i8*], align 16
  store i64 %0, i64* %2, align 8
  %4 = bitcast [115 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([115 x i8*]* @__const.GetInfoClassName.fileInfoClassNames to i8*), i64 920, i1 false)
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds [115 x i8*], [115 x i8*]* %3, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  ret i8* %7
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
