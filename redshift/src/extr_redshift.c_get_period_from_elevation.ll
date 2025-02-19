; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_get_period_from_elevation.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_get_period_from_elevation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@PERIOD_NIGHT = common dso_local global i32 0, align 4
@PERIOD_TRANSITION = common dso_local global i32 0, align 4
@PERIOD_DAYTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, double)* @get_period_from_elevation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_period_from_elevation(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @PERIOD_NIGHT, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fcmp olt double %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @PERIOD_TRANSITION, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @PERIOD_DAYTIME, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
