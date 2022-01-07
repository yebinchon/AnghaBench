; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_RequestSubRate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_RequestSubRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float)* @RequestSubRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RequestSubRate(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_5__* @input_priv(i32* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_5__* @input_priv(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load float, float* %6, align 4
  %16 = fcmp ogt float %15, 1.000000e+00
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load float, float* %4, align 4
  %19 = fcmp ogt float %18, 1.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load float, float* %6, align 4
  %22 = load float, float* %4, align 4
  %23 = fdiv float %21, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store float %23, float* %25, align 8
  br label %35

26:                                               ; preds = %17, %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store float 1.000000e+00, float* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %20
  ret void
}

declare dso_local %struct.TYPE_5__* @input_priv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
