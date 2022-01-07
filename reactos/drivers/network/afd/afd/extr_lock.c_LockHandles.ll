; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_lock.c_LockHandles.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_lock.c_LockHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_AFD_POLL_HANDLE = common dso_local global i32 0, align 4
@FILE_ALL_ACCESS = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to reference handles (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @LockHandles(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @NonPagedPool, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @TAG_AFD_POLL_HANDLE, align 4
  %16 = call %struct.TYPE_6__* @ExAllocatePoolWithTag(i32 %10, i32 %14, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %93, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %96

26:                                               ; preds = %24
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %26
  br label %93

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @NT_SUCCESS(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @FILE_ALL_ACCESS, align 4
  %69 = load i32, i32* @KernelMode, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = bitcast i64* %74 to i32*
  %76 = call i32 @ObReferenceObjectByHandle(i32 %67, i32 %68, i32* null, i32 %69, i32* %75, i32* null)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %60, %56
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @NT_SUCCESS(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @MIN_TRACE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @AFD_DbgPrint(i32 %82, i8* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %81, %77
  br label %93

93:                                               ; preds = %92, %55
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %17

96:                                               ; preds = %24
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @NT_SUCCESS(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @UnlockHandles(%struct.TYPE_6__* %101, i32 %102)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %106

104:                                              ; preds = %96
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %3, align 8
  br label %106

106:                                              ; preds = %104, %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %107
}

declare dso_local %struct.TYPE_6__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ObReferenceObjectByHandle(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @UnlockHandles(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
