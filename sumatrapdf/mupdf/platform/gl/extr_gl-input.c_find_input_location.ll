; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_find_input_location.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-input.c_find_input_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }
%struct.line = type { i32, i32 }

@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.line*, i32, float, float, float, float)* @find_input_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_input_location(%struct.line* %0, i32 %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load float, float* %12, align 4
  %15 = load float, float* %10, align 4
  %16 = fcmp ogt float %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load float, float* %12, align 4
  %19 = load float, float* %10, align 4
  %20 = fsub float %18, %19
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 4
  %22 = fdiv float %20, %21
  %23 = fptosi float %22 to i32
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %17, %6
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.line*, %struct.line** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.line, %struct.line* %32, i64 %34
  %36 = getelementptr inbounds %struct.line, %struct.line* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.line, %struct.line* %38, i64 %40
  %42 = getelementptr inbounds %struct.line, %struct.line* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load float, float* %9, align 4
  %45 = load float, float* %11, align 4
  %46 = call i8* @find_string_location(i32 %37, i32 %43, float %44, float %45)
  ret i8* %46
}

declare dso_local i8* @find_string_location(i32, i32, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
