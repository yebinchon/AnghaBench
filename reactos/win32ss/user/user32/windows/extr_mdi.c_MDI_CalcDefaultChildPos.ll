; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_CalcDefaultChildPos.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_CalcDefaultChildPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }

@SM_CYCAPTION = common dso_local global i32 0, align 4
@SM_CYFRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MDI child id %04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MDI_CalcDefaultChildPos(i32 %0, i32 %1, %struct.TYPE_9__* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %15 = load i32, i32* @SM_CYCAPTION, align 4
  %16 = call i32 @GetSystemMetrics(i32 %15)
  %17 = load i32, i32* @SM_CYFRAME, align 4
  %18 = call i32 @GetSystemMetrics(i32 %17)
  %19 = add nsw i32 %16, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_8__* @get_client_info(i32 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %14, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i64 [ %44, %37 ], [ 0, %45 ]
  %48 = load i64*, i64** %10, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46, %5
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @GetClientRect(i32 %53, %struct.TYPE_7__* %12)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 3, %75
  %77 = sdiv i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %79, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sub nsw i32 %82, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sub nsw i32 %94, %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = srem i32 %103, %105
  %107 = mul nsw i32 %102, %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 4
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local %struct.TYPE_8__* @get_client_info(i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
