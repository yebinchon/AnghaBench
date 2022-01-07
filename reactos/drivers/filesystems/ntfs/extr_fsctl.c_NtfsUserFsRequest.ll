; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsUserFsRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsUserFsRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"NtfsUserFsRequest(%p, %p)\0A\00", align 1
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unimplemented user request: %x\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid user request: %x\0A\00", align 1
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @NtfsUserFsRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsUserFsRequest(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_9__* @IoGetCurrentIrpStackLocation(i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %52 [
    i32 143, label %21
    i32 142, label %21
    i32 141, label %21
    i32 140, label %21
    i32 137, label %21
    i32 134, label %21
    i32 133, label %21
    i32 132, label %21
    i32 131, label %21
    i32 130, label %21
    i32 128, label %21
    i32 135, label %30
    i32 129, label %35
    i32 138, label %40
    i32 139, label %44
    i32 136, label %48
  ]

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %22 = load i32, i32* @UNIMPLEMENTED, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @LockOrUnlockVolume(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %60

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @LockOrUnlockVolume(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %60

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @GetNfsVolumeData(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %60

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @GetNtfsFileRecord(i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %60

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @GetVolumeBitmap(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @STATUS_INVALID_DEVICE_REQUEST, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %48, %44, %40, %35, %30, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @IoGetCurrentIrpStackLocation(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @LockOrUnlockVolume(i32, i32, i32) #1

declare dso_local i32 @GetNfsVolumeData(i32, i32) #1

declare dso_local i32 @GetNtfsFileRecord(i32, i32) #1

declare dso_local i32 @GetVolumeBitmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
