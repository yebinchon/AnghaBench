; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/mm/extr_marea.c_MmInsertMemoryArea.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/mm/extr_marea.c_MmInsertMemoryArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }

@MmSystemRangeStart = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MEMORY_AREA_OWNED_BY_ARM3 = common dso_local global i64 0, align 8
@MEMORY_AREA_SECTION_VIEW = common dso_local global i64 0, align 8
@MEMORY_AREA_CACHE = common dso_local global i64 0, align 8
@MiRosKernelVadRootInitialized = common dso_local global i64 0, align 8
@MiRosKernelVadRoot = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@MmSystemCacheWs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_17__*)* @MmInsertMemoryArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MmInsertMemoryArea(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_18__* @MmGetAddressSpaceOwner(i32 %7)
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MiMakeProtectionMask(i32 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 %17, i32* %22, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i64, i64* @MmSystemRangeStart, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = zext i32 %29 to i64
  %31 = ashr i64 %28, %30
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %2
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = icmp ne %struct.TYPE_18__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MEMORY_AREA_OWNED_BY_ARM3, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %33
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MEMORY_AREA_SECTION_VIEW, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MEMORY_AREA_CACHE, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %43
  %56 = phi i1 [ true, %43 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = call i32 (...) @PsGetCurrentProcess()
  %60 = call i32 (...) @PsGetCurrentThread()
  %61 = call i32 @MiLockProcessWorkingSetUnsafe(i32 %59, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = call i32 @MiInsertVad(%struct.TYPE_12__* %63, %struct.TYPE_19__* %65)
  %67 = call i32 (...) @PsGetCurrentProcess()
  %68 = call i32 (...) @PsGetCurrentThread()
  %69 = call i32 @MiUnlockProcessWorkingSetUnsafe(i32 %67, i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %73, align 8
  br label %74

74:                                               ; preds = %55, %33
  br label %94

75:                                               ; preds = %2
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = icmp eq %struct.TYPE_18__* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i64, i64* @MiRosKernelVadRootInitialized, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  store %struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @MiRosKernelVadRoot, i32 0, i32 1), %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @MiRosKernelVadRoot, i32 0, i32 1, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @MiRosKernelVadRoot, i32 0, i32 0), align 8
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* @MiRosKernelVadRootInitialized, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = call i32 (...) @PsGetCurrentThread()
  %86 = call i32 @MiLockWorkingSet(i32 %85, i32* @MmSystemCacheWs)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = call i32 @MiInsertVad(%struct.TYPE_12__* %88, %struct.TYPE_19__* @MiRosKernelVadRoot)
  %90 = call i32 (...) @PsGetCurrentThread()
  %91 = call i32 @MiUnlockWorkingSet(i32 %90, i32* @MmSystemCacheWs)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %93, align 8
  br label %94

94:                                               ; preds = %84, %74
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_18__* @MmGetAddressSpaceOwner(i32) #1

declare dso_local i32 @MiMakeProtectionMask(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MiLockProcessWorkingSetUnsafe(i32, i32) #1

declare dso_local i32 @PsGetCurrentProcess(...) #1

declare dso_local i32 @PsGetCurrentThread(...) #1

declare dso_local i32 @MiInsertVad(%struct.TYPE_12__*, %struct.TYPE_19__*) #1

declare dso_local i32 @MiUnlockProcessWorkingSetUnsafe(i32, i32) #1

declare dso_local i32 @MiLockWorkingSet(i32, i32*) #1

declare dso_local i32 @MiUnlockWorkingSet(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
