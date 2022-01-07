; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkgrayer.c_Forward.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkgrayer.c_Forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @Forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Forward(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @cmsLabEncoded2Float(%struct.TYPE_3__* %7, i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fabs(i32 %13)
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @fabs(i32 %18)
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fdiv double %23, 1.000000e+02
  store double %24, double* %8, align 8
  %25 = load double, double* %8, align 8
  %26 = fcmp ogt double %25, 1.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store double 1.000000e+00, double* %8, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load double, double* %8, align 8
  %30 = fmul double %29, 6.553500e+04
  %31 = fadd double %30, 5.000000e-01
  %32 = call i64 @floor(double %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %34, i32* %40, align 4
  br label %48

41:                                               ; preds = %16, %3
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 65535, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %28
  %49 = load i32, i32* @TRUE, align 4
  ret i32 %49
}

declare dso_local i32 @cmsLabEncoded2Float(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
