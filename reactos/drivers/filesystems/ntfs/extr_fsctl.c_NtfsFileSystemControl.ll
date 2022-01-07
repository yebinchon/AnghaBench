; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsFileSystemControl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsFileSystemControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"NtfsFileSystemControl() called\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"NTFS: IRP_MN_USER_FS_REQUEST\0A\00", align 1
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"NTFS: IRP_MN_MOUNT_VOLUME\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"NTFS: IRP_MN_VERIFY_VOLUME\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"NTFS FSC: MinorFunction %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsFileSystemControl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %36 [
    i32 131, label %19
    i32 129, label %22
    i32 130, label %26
    i32 128, label %31
  ]

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i32 @NtfsUserFsRequest(i32 %23, %struct.TYPE_10__* %24)
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %1
  %27 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @NtfsMountVolume(i32 %28, %struct.TYPE_10__* %29)
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 @NtfsVerifyVolume(i32 %33, %struct.TYPE_10__* %34)
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %31, %26, %22, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @NtfsUserFsRequest(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @NtfsMountVolume(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @NtfsVerifyVolume(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
