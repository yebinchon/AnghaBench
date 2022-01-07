; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_systemtime.c_systemtime_get_time.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_systemtime.c_systemtime_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @systemtime_get_time(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %6 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fdiv double %15, 1.000000e+06
  %17 = fadd double %13, %16
  %18 = load double*, double** %3, align 8
  store double %17, double* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
