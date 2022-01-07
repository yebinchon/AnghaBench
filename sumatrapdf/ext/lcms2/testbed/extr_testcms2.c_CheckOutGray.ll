; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOutGray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOutGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"Gray value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double, i64)* @CheckOutGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOutGray(i32 %0, double %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load double, double* %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store double %9, double* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 (...) @DbgThread()
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @cmsDoTransform(i32 %13, i32 %14, %struct.TYPE_3__* %7, i64* %8, i32 1)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sitofp i64 %17 to double
  %19 = call i32 @IsGoodVal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %16, double %18, double 1.000000e-02)
  ret i32 %19
}

declare dso_local i32 @cmsDoTransform(i32, i32, %struct.TYPE_3__*, i64*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @IsGoodVal(i8*, i64, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
