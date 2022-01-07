; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_estimate_max_spread_opexpr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_estimate_max_spread_opexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@INVALID_ESTIMATE = common dso_local global double 0.000000e+00, align 8
@Const = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_3__*)* @estimate_max_spread_opexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @estimate_max_spread_opexpr(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @get_opname(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @list_length(i32 %16)
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load double, double* @INVALID_ESTIMATE, align 8
  store double %24, double* %3, align 8
  br label %68

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @linitial(i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @lsecond(i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @Const, align 4
  %36 = call i64 @IsA(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %9, align 8
  br label %50

40:                                               ; preds = %25
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @Const, align 4
  %43 = call i64 @IsA(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %9, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load double, double* @INVALID_ESTIMATE, align 8
  store double %48, double* %3, align 8
  br label %68

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %50
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call double @estimate_max_spread_expr(i32* %63, i32* %64)
  store double %65, double* %3, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load double, double* @INVALID_ESTIMATE, align 8
  store double %67, double* %3, align 8
  br label %68

68:                                               ; preds = %66, %62, %47, %23
  %69 = load double, double* %3, align 8
  ret double %69
}

declare dso_local i8* @get_opname(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @linitial(i32) #1

declare dso_local i32* @lsecond(i32) #1

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local double @estimate_max_spread_expr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
