; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_autozoom.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_autozoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdfapp_autozoom(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to float
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  %12 = fdiv float %8, %11
  store float %12, float* %3, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to float
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fdiv float %16, %19
  store float %20, float* %4, align 4
  %21 = load float, float* %3, align 4
  %22 = load float, float* %4, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @pdfapp_autozoom_horizontal(%struct.TYPE_5__* %25)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = call i32 @pdfapp_autozoom_vertical(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @pdfapp_autozoom_horizontal(%struct.TYPE_5__*) #1

declare dso_local i32 @pdfapp_autozoom_vertical(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
