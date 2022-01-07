; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_rotate.c_store_trigo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_rotate.c_store_trigo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float)* @store_trigo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_trigo(%struct.TYPE_5__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float %1, float* %4, align 4
  %6 = load i32, i32* @M_PI, align 4
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 1.800000e+02
  %9 = fptrunc double %8 to float
  %10 = load float, float* %4, align 4
  %11 = fmul float %10, %9
  store float %11, float* %4, align 4
  %12 = load float, float* %4, align 4
  %13 = call float @sinf(float %12) #3
  %14 = fmul float %13, 4.096000e+03
  %15 = call i8* @lroundf(float %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = load float, float* %4, align 4
  %18 = call float @cosf(float %17) #3
  %19 = fmul float %18, 4.096000e+03
  %20 = call i8* @lroundf(float %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @atomic_store(i32* %23, i32 %25)
  ret void
}

declare dso_local i8* @lroundf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

declare dso_local i32 @atomic_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
