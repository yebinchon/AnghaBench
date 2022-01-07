; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"a axis on gray\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"b axis on gray\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Gray value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, double)* @CheckGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGray(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %9 = call i32 (...) @DbgThread()
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cmsDoTransform(i32 %9, i32 %10, i32* %6, %struct.TYPE_3__* %8, i32 1)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IsGoodVal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double 0.000000e+00, i32 %13, double 1.000000e-03)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IsGoodVal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double 0.000000e+00, i32 %19, double 1.000000e-03)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %28

23:                                               ; preds = %17
  %24 = load double, double* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IsGoodVal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), double %24, i32 %26, double 1.000000e-02)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @IsGoodVal(i8*, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
