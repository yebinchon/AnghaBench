; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_provider_get_location.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_provider_get_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)*, i32 (i32*, i32*, i32*)* }
%struct.pollfd = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to read system time.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*)* @provider_get_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @provider_get_location(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.pollfd], align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %94, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32*)*, i32 (i32*)** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 %24(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %21
  %30 = call i32 @systemtime_get_time(double* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fputs(i32 %34, i32 %35)
  store i32 -1, i32* %5, align 4
  br label %96

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @POLLIN, align 4
  %42 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %11, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @poll(%struct.pollfd* %44, i32 1, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %96

51:                                               ; preds = %37
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %96

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = call i32 @systemtime_get_time(double* %15)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @fputs(i32 %61, i32 %62)
  store i32 -1, i32* %5, align 4
  br label %96

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load double, double* %15, align 8
  %69 = load double, double* %13, align 8
  %70 = fsub double %68, %69
  %71 = fmul double %70, 1.000000e+03
  %72 = load i32, i32* %8, align 4
  %73 = sitofp i32 %72 to double
  %74 = fsub double %73, %71
  %75 = fptosi double %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 0, %78 ], [ %80, %79 ]
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %64
  br label %84

84:                                               ; preds = %83, %21
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 %87(i32* %88, i32* %89, i32* %10)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 -1, i32* %5, align 4
  br label %96

94:                                               ; preds = %84
  br label %17

95:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %93, %60, %54, %49, %33
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @systemtime_get_time(double*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
