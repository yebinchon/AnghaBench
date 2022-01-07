; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_InitSystemHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_InitSystemHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@EmsHandleTable = common dso_local global %struct.TYPE_4__* null, align 8
@EMS_SYSTEM_HANDLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AllocBitmap = common dso_local global i32 0, align 4
@EMS_STATUS_INSUFFICIENT_PAGES = common dso_local global i32 0, align 4
@EmsPageTable = common dso_local global %struct.TYPE_5__* null, align 8
@EMS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @InitSystemHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitSystemHandle(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @EmsHandleTable, align 8
  %10 = load i64, i64* @EMS_SYSTEM_HANDLE, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* @TRUE, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %88, %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @RtlFindNextForwardRunClear(i32* @AllocBitmap, i64 %29, i64* %7)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @EMS_SYSTEM_HANDLE, align 8
  %35 = call i32 @EmsFree(i64 %34)
  %36 = load i32, i32* @EMS_STATUS_INSUFFICIENT_PAGES, align 4
  store i32 %36, i32* %2, align 4
  br label %91

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %3, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @RtlSetBits(i32* @AllocBitmap, i64 %61, i64 %62)
  store i64 0, i64* %4, align 8
  br label %64

64:                                               ; preds = %85, %52
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i64, i64* @EMS_SYSTEM_HANDLE, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EmsPageTable, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %4, align 8
  %73 = add nsw i64 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i64 %69, i64* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EmsPageTable, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %4, align 8
  %81 = add nsw i64 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i32 @InsertTailList(i32* %77, i32* %83)
  br label %85

85:                                               ; preds = %68
  %86 = load i64, i64* %4, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %4, align 8
  br label %64

88:                                               ; preds = %64
  br label %22

89:                                               ; preds = %22
  %90 = load i32, i32* @EMS_STATUS_SUCCESS, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %33
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @RtlFindNextForwardRunClear(i32*, i64, i64*) #1

declare dso_local i32 @EmsFree(i64) #1

declare dso_local i32 @RtlSetBits(i32*, i64, i64) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
