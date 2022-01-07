; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fat.c_GetNextCluster.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fat.c_GetNextCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, {}* }

@.str = private unnamed_addr constant [49 x i8] c"GetNextCluster(DeviceExt %p, CurrentCluster %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"WARNING: File system corruption detected. You may need to run a disk repair utility.\0A\00", align 1
@VfatGlobalData = common dso_local global %struct.TYPE_7__* null, align 8
@VFAT_BREAK_ON_CORRUPTION = common dso_local global i32 0, align 4
@STATUS_FILE_CORRUPT_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNextCluster(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %9, i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = call i32 @DPRINT1(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VfatGlobalData, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VFAT_BREAK_ON_CORRUPTION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load i32, i32* @STATUS_FILE_CORRUPT_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @ExAcquireResourceSharedLite(i32* %31, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = bitcast {}** %35 to i32 (%struct.TYPE_6__*, i64, i32)**
  %37 = load i32 (%struct.TYPE_6__*, i64, i32)*, i32 (%struct.TYPE_6__*, i64, i32)** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 %37(%struct.TYPE_6__* %38, i64 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @ExReleaseResourceLite(i32* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
