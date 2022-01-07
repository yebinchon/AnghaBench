; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_search.c_remove_drive_letter.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_search.c_remove_drive_letter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"removing drive letter\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@IOCTL_MOUNTMGR_DELETE_POINTS = common dso_local global i32 0, align 4
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"IOCTL_MOUNTMGR_DELETE_POINTS 1 returned %08x\0A\00", align 1
@STATUS_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"IOCTL_MOUNTMGR_DELETE_POINTS 2 returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @remove_drive_letter(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @PagedPool, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ALLOC_TAG, align 4
  %21 = call %struct.TYPE_12__* @ExAllocatePoolWithTag(i32 %18, i32 %19, i32 %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %26, i64* %3, align 8
  br label %111

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @RtlZeroMemory(%struct.TYPE_12__* %28, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 12, i32* %32, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @RtlCopyMemory(%struct.TYPE_12__* %39, i32 %42, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @IOCTL_MOUNTMGR_DELETE_POINTS, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @dev_ioctl(i32 %47, i32 %48, %struct.TYPE_12__* %49, i32 %50, %struct.TYPE_12__* %9, i32 12, i32 0, i32* null)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @NT_SUCCESS(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %27
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = call i32 @ExFreePool(%struct.TYPE_12__* %62)
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %111

65:                                               ; preds = %55, %27
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = call i32 @ExFreePool(%struct.TYPE_12__* %74)
  %76 = load i64, i64* @STATUS_NOT_FOUND, align 8
  store i64 %76, i64* %3, align 8
  br label %111

77:                                               ; preds = %69
  %78 = load i32, i32* @PagedPool, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ALLOC_TAG, align 4
  %82 = call %struct.TYPE_12__* @ExAllocatePoolWithTag(i32 %78, i32 %80, i32 %81)
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %10, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = icmp ne %struct.TYPE_12__* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i32 @ExFreePool(%struct.TYPE_12__* %87)
  %89 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %89, i64* %3, align 8
  br label %111

90:                                               ; preds = %77
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @IOCTL_MOUNTMGR_DELETE_POINTS, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @dev_ioctl(i32 %91, i32 %92, %struct.TYPE_12__* %93, i32 %94, %struct.TYPE_12__* %95, i32 %97, i32 0, i32* null)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @NT_SUCCESS(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %90
  %103 = load i64, i64* %6, align 8
  %104 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %102, %90
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = call i32 @ExFreePool(%struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = call i32 @ExFreePool(%struct.TYPE_12__* %108)
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %105, %85, %73, %59, %24
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_12__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @dev_ioctl(i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
