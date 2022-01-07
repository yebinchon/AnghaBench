; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/tests/extr_TestTimer.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/tests/extr_TestTimer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double }

@.str = private unnamed_addr constant [71 x i8] c"HIGH RESOLUTION PERFOMANCE COUNTER Frequency = %I64d CLOCKS IN SECOND\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Your computer does not support High Resolution Performance counter\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Press <ENTER> to start test...\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\0APress any key to quit test\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Elapsed Time : %8.6f mSec\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = call i32 @QueryPerformanceFrequency(%struct.TYPE_4__* %7)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), double %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %40

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 (...) @getchar()
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @QueryPerformanceCounter(%struct.TYPE_4__* %8)
  br label %24

24:                                               ; preds = %39, %19
  %25 = call i32 @QueryPerformanceCounter(%struct.TYPE_4__* %9)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fsub double %27, %29
  %31 = fmul double %30, 1.000000e+03
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fdiv double %31, %33
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), double %34)
  %36 = call i64 (...) @_kbhit()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %40

39:                                               ; preds = %24
  br label %24

40:                                               ; preds = %17, %38
  ret void
}

declare dso_local i32 @QueryPerformanceFrequency(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @QueryPerformanceCounter(%struct.TYPE_4__*) #1

declare dso_local i64 @_kbhit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
