; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_jsB_new_Date.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_jsB_new_Date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { double }

@JS_HNONE = common dso_local global i32 0, align 4
@JS_CDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @jsB_new_Date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_new_Date(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = call i32 @js_gettop(%struct.TYPE_16__* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call double (...) @Now()
  store double %18, double* %5, align 8
  br label %73

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = load i32, i32* @JS_HNONE, align 4
  %25 = call i32 @js_toprimitive(%struct.TYPE_16__* %23, i32 1, i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i64 @js_isstring(%struct.TYPE_16__* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = call i32 @js_tostring(%struct.TYPE_16__* %30, i32 1)
  %32 = call double @parseDateTime(i32 %31)
  store double %32, double* %5, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = call double @js_tonumber(%struct.TYPE_16__* %34, i32 1)
  %36 = call double @TimeClip(double %35)
  store double %36, double* %5, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %72

38:                                               ; preds = %19
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = call double @js_tonumber(%struct.TYPE_16__* %39, i32 1)
  store double %40, double* %6, align 8
  %41 = load double, double* %6, align 8
  %42 = fcmp olt double %41, 1.000000e+02
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load double, double* %6, align 8
  %45 = fadd double %44, 1.900000e+03
  store double %45, double* %6, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = call double @js_tonumber(%struct.TYPE_16__* %47, i32 2)
  store double %48, double* %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = call double @js_optnumber(%struct.TYPE_16__* %49, i32 3, i32 1)
  store double %50, double* %8, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = call double @js_optnumber(%struct.TYPE_16__* %51, i32 4, i32 0)
  store double %52, double* %9, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = call double @js_optnumber(%struct.TYPE_16__* %53, i32 5, i32 0)
  store double %54, double* %10, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = call double @js_optnumber(%struct.TYPE_16__* %55, i32 6, i32 0)
  store double %56, double* %11, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = call double @js_optnumber(%struct.TYPE_16__* %57, i32 7, i32 0)
  store double %58, double* %12, align 8
  %59 = load double, double* %6, align 8
  %60 = load double, double* %7, align 8
  %61 = load double, double* %8, align 8
  %62 = call i32 @MakeDay(double %59, double %60, double %61)
  %63 = load double, double* %9, align 8
  %64 = load double, double* %10, align 8
  %65 = load double, double* %11, align 8
  %66 = load double, double* %12, align 8
  %67 = call i32 @MakeTime(double %63, double %64, double %65, double %66)
  %68 = call double @MakeDate(i32 %62, i32 %67)
  store double %68, double* %5, align 8
  %69 = load double, double* %5, align 8
  %70 = call double @UTC(double %69)
  %71 = call double @TimeClip(double %70)
  store double %71, double* %5, align 8
  br label %72

72:                                               ; preds = %46, %37
  br label %73

73:                                               ; preds = %72, %17
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = load i32, i32* @JS_CDATE, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__* %74, i32 %75, i32 %78)
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %4, align 8
  %80 = load double, double* %5, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store double %80, double* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = call i32 @js_pushobject(%struct.TYPE_16__* %84, %struct.TYPE_17__* %85)
  ret void
}

declare dso_local i32 @js_gettop(%struct.TYPE_16__*) #1

declare dso_local double @Now(...) #1

declare dso_local i32 @js_toprimitive(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @js_isstring(%struct.TYPE_16__*, i32) #1

declare dso_local double @parseDateTime(i32) #1

declare dso_local i32 @js_tostring(%struct.TYPE_16__*, i32) #1

declare dso_local double @TimeClip(double) #1

declare dso_local double @js_tonumber(%struct.TYPE_16__*, i32) #1

declare dso_local double @js_optnumber(%struct.TYPE_16__*, i32, i32) #1

declare dso_local double @MakeDate(i32, i32) #1

declare dso_local i32 @MakeDay(double, double, double) #1

declare dso_local i32 @MakeTime(double, double, double, double) #1

declare dso_local double @UTC(double) #1

declare dso_local %struct.TYPE_17__* @jsV_newobject(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
