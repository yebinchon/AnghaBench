; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_dvdtime_to_time.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_dvdtime_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @dvdtime_to_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dvdtime_to_time(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 240
  %10 = ashr i32 %9, 4
  %11 = mul nsw i32 %10, 10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 15
  %16 = add nsw i32 %11, %15
  %17 = mul nsw i32 %16, 60
  %18 = mul nsw i32 %17, 60
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 240
  %23 = ashr i32 %22, 4
  %24 = mul nsw i32 %23, 10
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 15
  %29 = add nsw i32 %24, %28
  %30 = mul nsw i32 %29, 60
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 240
  %37 = ashr i32 %36, 4
  %38 = mul nsw i32 %37, 10
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = add nsw i32 %38, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 192
  %50 = ashr i32 %49, 6
  switch i32 %50, label %53 [
    i32 1, label %51
    i32 3, label %52
  ]

51:                                               ; preds = %1
  store double 2.500000e+01, double* %3, align 8
  br label %54

52:                                               ; preds = %1
  store double 2.997000e+01, double* %3, align 8
  br label %54

53:                                               ; preds = %1
  store double 2.500000e+03, double* %3, align 8
  br label %54

54:                                               ; preds = %53, %52, %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 63
  %59 = and i32 %58, 240
  %60 = ashr i32 %59, 4
  %61 = mul nsw i32 %60, 10
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 63
  %66 = and i32 %65, 15
  %67 = add nsw i32 %61, %66
  %68 = sitofp i32 %67 to double
  %69 = fmul double %68, 1.000000e+03
  %70 = load double, double* %3, align 8
  %71 = fdiv double %69, %70
  store double %71, double* %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @vlc_tick_from_sec(i32 %72)
  %74 = load double, double* %4, align 8
  %75 = call i64 @VLC_TICK_FROM_MS(double %74)
  %76 = add nsw i64 %73, %75
  ret i64 %76
}

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
