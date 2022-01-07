; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_EmsAlloc.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_EmsAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@EMS_STATUS_ZERO_PAGES = common dso_local global i32 0, align 4
@EMS_STATUS_NO_MORE_HANDLES = common dso_local global i32 0, align 4
@AllocBitmap = common dso_local global i32 0, align 4
@EMS_STATUS_INSUFFICIENT_PAGES = common dso_local global i32 0, align 4
@EmsPageTable = common dso_local global %struct.TYPE_5__* null, align 8
@EMS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @EmsAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmsAlloc(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EMS_STATUS_ZERO_PAGES, align 4
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_4__* @CreateHandle(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EMS_STATUS_NO_MORE_HANDLES, align 4
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %91, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @RtlFindNextForwardRunClear(i32* @AllocBitmap, i64 %30, i64* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EmsFree(i32 %36)
  %38 = load i32, i32* @EMS_STATUS_INSUFFICIENT_PAGES, align 4
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @RtlSetBits(i32* @AllocBitmap, i64 %63, i64 %64)
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %88, %54
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EmsPageTable, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EmsPageTable, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add nsw i64 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @InsertTailList(i32* %80, i32* %86)
  br label %88

88:                                               ; preds = %70
  %89 = load i64, i64* %6, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %66

91:                                               ; preds = %66
  br label %23

92:                                               ; preds = %23
  %93 = load i32, i32* @EMS_STATUS_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %34, %20, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_4__* @CreateHandle(i32*) #1

declare dso_local i64 @RtlFindNextForwardRunClear(i32*, i64, i64*) #1

declare dso_local i32 @EmsFree(i32) #1

declare dso_local i32 @RtlSetBits(i32*, i64, i64) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
