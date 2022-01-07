; ModuleID = '/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_slave_to_system_locked.c'
source_filename = "/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_slave_to_system_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, double }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i64, double)* @vlc_clock_slave_to_system_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlc_clock_slave_to_system_locked(%struct.TYPE_6__* %0, i64 %1, i64 %2, double %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store double %3, double* %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VLC_TICK_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @INT64_MAX, align 8
  store i64 %21, i64* %5, align 8
  br label %49

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @main_stream_to_system(%struct.TYPE_7__* %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @VLC_TICK_INVALID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load double, double* %9, align 8
  %34 = call i64 @vlc_clock_monotonic_to_system_locked(%struct.TYPE_6__* %30, i64 %31, i64 %32, double %33)
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i64, i64* %11, align 8
  %37 = sitofp i64 %36 to double
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = load double, double* %9, align 8
  %46 = fmul double %44, %45
  %47 = fadd double %37, %46
  %48 = fptosi double %47 to i64
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %35, %20
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i64 @main_stream_to_system(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @vlc_clock_monotonic_to_system_locked(%struct.TYPE_6__*, i64, i64, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
