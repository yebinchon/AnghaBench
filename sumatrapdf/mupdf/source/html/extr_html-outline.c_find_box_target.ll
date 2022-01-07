; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-outline.c_find_box_target.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-outline.c_find_box_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, i64, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_6__ = type { float }

@BOX_FLOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_7__*, i8*)* @find_box_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @find_box_target(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %64, %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %68

11:                                               ; preds = %8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @strcmp(i8* %17, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call %struct.TYPE_6__* @find_first_content(%struct.TYPE_7__* %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  store float %31, float* %3, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  store float %35, float* %3, align 4
  br label %69

36:                                               ; preds = %16, %11
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BOX_FLOW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call float @find_flow_target(i32 %45, i8* %46)
  store float %47, float* %6, align 4
  %48 = load float, float* %6, align 4
  %49 = fcmp oge float %48, 0.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load float, float* %6, align 4
  store float %51, float* %3, align 4
  br label %69

52:                                               ; preds = %42
  br label %64

53:                                               ; preds = %36
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call float @find_box_target(%struct.TYPE_7__* %56, i8* %57)
  store float %58, float* %6, align 4
  %59 = load float, float* %6, align 4
  %60 = fcmp oge float %59, 0.000000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load float, float* %6, align 4
  store float %62, float* %3, align 4
  br label %69

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %4, align 8
  br label %8

68:                                               ; preds = %8
  store float -1.000000e+00, float* %3, align 4
  br label %69

69:                                               ; preds = %68, %61, %50, %32, %28
  %70 = load float, float* %3, align 4
  ret float %70
}

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local %struct.TYPE_6__* @find_first_content(%struct.TYPE_7__*) #1

declare dso_local float @find_flow_target(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
