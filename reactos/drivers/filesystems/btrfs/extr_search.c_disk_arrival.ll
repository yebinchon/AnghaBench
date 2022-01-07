; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_search.c_disk_arrival.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_search.c_disk_arrival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@boot_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IoGetDeviceObjectPointer returned %08x\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@IOCTL_DISK_GET_DRIVE_LAYOUT_EX = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@IOCTL_DISK_GET_LENGTH_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"error reading length information: %08x\0A\00", align 1
@IOCTL_STORAGE_GET_DEVICE_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"IOCTL_STORAGE_GET_DEVICE_NUMBER returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"DeviceType = %u, DeviceNumber = %u, PartitionNumber = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_arrival(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @UNUSED(i32 %13)
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @ExAcquireResourceSharedLite(i32* @boot_lock, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %19 = call i64 @IoGetDeviceObjectPointer(i32 %17, i32 %18, i32* %5, i32* %6)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @NT_SUCCESS(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 @ExReleaseResourceLite(i32* @boot_lock)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %116

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1024
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = call i32 @ExFreePool(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @PagedPool, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ALLOC_TAG, align 4
  %40 = call %struct.TYPE_9__* @ExAllocatePoolWithTag(i32 %37, i32 %38, i32 %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %112

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IOCTL_DISK_GET_DRIVE_LAYOUT_EX, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @dev_ioctl(i32 %46, i32 %47, i32* null, i32 0, %struct.TYPE_9__* %48, i32 %49, i32 1, i32* %11)
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %28, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @NT_SUCCESS(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = call i32 @ExFreePool(%struct.TYPE_9__* %65)
  br label %112

67:                                               ; preds = %59, %55
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = call i32 @ExFreePool(%struct.TYPE_9__* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IOCTL_DISK_GET_LENGTH_INFO, align 4
  %72 = call i64 @dev_ioctl(i32 %70, i32 %71, i32* null, i32 0, %struct.TYPE_9__* %12, i32 32, i32 1, i32* null)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @NT_SUCCESS(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  br label %112

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IOCTL_STORAGE_GET_DEVICE_NUMBER, align 4
  %82 = call i64 @dev_ioctl(i32 %80, i32 %81, i32* null, i32 0, %struct.TYPE_9__* %8, i32 32, i32 1, i32* null)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @NT_SUCCESS(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 -1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i64 0, i64* %90, align 8
  br label %100

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %94, i32 %96, i64 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @test_vol(i32 %101, i32 %102, i32 %103, i32 %105, i64 %107, i32 %110)
  br label %112

112:                                              ; preds = %100, %76, %64, %43
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ObDereferenceObject(i32 %113)
  %115 = call i32 @ExReleaseResourceLite(i32* @boot_lock)
  br label %116

116:                                              ; preds = %112, %23
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i64 @IoGetDeviceObjectPointer(i32, i32, i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @dev_ioctl(i32, i32, i32*, i32, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @test_vol(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
