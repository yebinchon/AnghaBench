; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_plot_unit_times.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_plot_unit_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_times = type { double, double, double, double, i32, i32 }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"activating\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"deactivating\00", align 1
@SCALE_X = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unit_times*, double, i32)* @plot_unit_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plot_unit_times(%struct.unit_times* %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unit_times*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.unit_times* %0, %struct.unit_times** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %17 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %23 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %26 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @svg_bar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %24, double %27, i32 %28)
  %30 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %31 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %34 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @svg_bar(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %32, double %35, i32 %36)
  %38 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %39 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %42 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %41, i32 0, i32 3
  %43 = load double, double* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @svg_bar(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), double %40, double %43, i32 %44)
  %46 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %47 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = load double, double* @SCALE_X, align 8
  %50 = fmul double %48, %49
  %51 = load double, double* %6, align 8
  %52 = fdiv double %51, 2.000000e+00
  %53 = fcmp olt double %50, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %56 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %21
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %62 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %66 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = trunc i64 %13 to i32
  %69 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %70 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @USEC_PER_MSEC, align 4
  %73 = call i32 @format_timespan(i8* %15, i32 %68, i32 %71, i32 %72)
  %74 = call i32 (i32, double, i32, i8*, i32, ...) @svg_text(i32 %60, double %63, i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %73)
  br label %85

75:                                               ; preds = %21
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %78 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.unit_times*, %struct.unit_times** %5, align 8
  %82 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, double, i32, i8*, i32, ...) @svg_text(i32 %76, double %79, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %75, %59
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %20
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svg_bar(i8*, double, double, i32) #2

declare dso_local i32 @svg_text(i32, double, i32, i8*, i32, ...) #2

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
