; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_svg_graph_box.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_svg_graph_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"<rect class=\22box\22 x=\220\22 y=\220\22 width=\22%.03f\22 height=\22%.03f\22 />\0A\00", align 1
@SCALE_X = common dso_local global double 0.000000e+00, align 8
@SCALE_Y = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [120 x i8] c"  <line class=\22sec5\22 x1=\22%.03f\22 y1=\220\22 x2=\22%.03f\22 y2=\22%.03f\22 />\0A  <text class=\22sec\22 x=\22%.03f\22 y=\22%.03f\22 >%.01fs</text>\0A\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"  <line class=\22sec1\22 x1=\22%.03f\22 y1=\220\22 x2=\22%.03f\22 y2=\22%.03f\22 />\0A  <text class=\22sec\22 x=\22%.03f\22 y=\22%.03f\22 >%.01fs</text>\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"  <line class=\22sec01\22 x1=\22%.03f\22 y1=\220\22 x2=\22%.03f\22 y2=\22%.03f\22 />\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double)* @svg_graph_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_graph_box(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* @SCALE_X, align 8
  %9 = load double, double* %6, align 8
  %10 = load double, double* %5, align 8
  %11 = fsub double %9, %10
  %12 = fmul double %8, %11
  %13 = load double, double* @SCALE_Y, align 8
  %14 = load double, double* %4, align 8
  %15 = fmul double %13, %14
  %16 = call i32 (i8*, double, double, ...) @svg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), double %12, double %15)
  %17 = load double, double* %5, align 8
  %18 = fdiv double %17, 1.000000e+05
  %19 = fptosi double %18 to i64
  %20 = mul nsw i64 %19, 100000
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %89, %3
  %22 = load i64, i64* %7, align 8
  %23 = sitofp i64 %22 to double
  %24 = load double, double* %6, align 8
  %25 = fcmp ole double %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = srem i64 %27, 5000000
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load double, double* @SCALE_X, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sitofp i64 %32 to double
  %34 = fmul double %31, %33
  %35 = load double, double* @SCALE_X, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sitofp i64 %36 to double
  %38 = fmul double %35, %37
  %39 = load double, double* @SCALE_Y, align 8
  %40 = load double, double* %4, align 8
  %41 = fmul double %39, %40
  %42 = load double, double* @SCALE_X, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sitofp i64 %43 to double
  %45 = fmul double %42, %44
  %46 = load i64, i64* %7, align 8
  %47 = sitofp i64 %46 to double
  %48 = fmul double 0x3EB0C6F7A0B5ED8D, %47
  %49 = call i32 (i8*, double, double, ...) @svg(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), double %34, double %38, double %41, double %45, double -5.000000e+00, double %48)
  br label %88

50:                                               ; preds = %26
  %51 = load i64, i64* %7, align 8
  %52 = srem i64 %51, 1000000
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load double, double* @SCALE_X, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sitofp i64 %56 to double
  %58 = fmul double %55, %57
  %59 = load double, double* @SCALE_X, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sitofp i64 %60 to double
  %62 = fmul double %59, %61
  %63 = load double, double* @SCALE_Y, align 8
  %64 = load double, double* %4, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* @SCALE_X, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sitofp i64 %67 to double
  %69 = fmul double %66, %68
  %70 = load i64, i64* %7, align 8
  %71 = sitofp i64 %70 to double
  %72 = fmul double 0x3EB0C6F7A0B5ED8D, %71
  %73 = call i32 (i8*, double, double, ...) @svg(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), double %58, double %62, double %65, double %69, double -5.000000e+00, double %72)
  br label %87

74:                                               ; preds = %50
  %75 = load double, double* @SCALE_X, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sitofp i64 %76 to double
  %78 = fmul double %75, %77
  %79 = load double, double* @SCALE_X, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sitofp i64 %80 to double
  %82 = fmul double %79, %81
  %83 = load double, double* @SCALE_Y, align 8
  %84 = load double, double* %4, align 8
  %85 = fmul double %83, %84
  %86 = call i32 (i8*, double, double, ...) @svg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), double %78, double %82, double %85)
  br label %87

87:                                               ; preds = %74, %54
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 100000
  store i64 %91, i64* %7, align 8
  br label %21

92:                                               ; preds = %21
  ret void
}

declare dso_local i32 @svg(i8*, double, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
