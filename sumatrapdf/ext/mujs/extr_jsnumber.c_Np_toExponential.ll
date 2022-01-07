; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_Np_toExponential.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_Np_toExponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double }

@JS_CNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"not a number\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"precision %d out of range\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Np_toExponential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Np_toExponential(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_5__* @js_toobject(i32* %7, i32 0)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_tointeger(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @JS_CNUMBER, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @js_typeerror(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @js_rangeerror(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 20
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @js_rangeerror(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  store double %37, double* %6, align 8
  %38 = load double, double* %6, align 8
  %39 = call i64 @isnan(double %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load double, double* %6, align 8
  %43 = call i64 @isinf(double %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %33
  %46 = load i32*, i32** %2, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %49 = load double, double* %6, align 8
  %50 = call i32 @jsV_numbertostring(i32* %47, i8* %48, double %49)
  %51 = call i32 @js_pushstring(i32* %46, i32 %50)
  br label %60

52:                                               ; preds = %41
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = call i32 @numtostr(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54, double %58)
  br label %60

60:                                               ; preds = %52, %45
  ret void
}

declare dso_local %struct.TYPE_5__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_rangeerror(i32*, i8*, i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @js_pushstring(i32*, i32) #1

declare dso_local i32 @jsV_numbertostring(i32*, i8*, double) #1

declare dso_local i32 @numtostr(i32*, i8*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
