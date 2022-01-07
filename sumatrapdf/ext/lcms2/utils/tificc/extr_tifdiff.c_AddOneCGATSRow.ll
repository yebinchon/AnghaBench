; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_AddOneCGATSRow.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_AddOneCGATSRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"PER100_EQUAL\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"MEAN_DE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"STDEV_DE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"MIN_DE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"MAX_DE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.TYPE_5__*)* @AddOneCGATSRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddOneCGATSRow(i32 %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = call double @Mean(%struct.TYPE_5__* %8)
  %10 = fsub double 2.550000e+02, %9
  %11 = fdiv double %10, 2.550000e+02
  %12 = fmul double 1.000000e+02, %11
  store double %12, double* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @cmsIT8SetData(i32* null, i32 %13, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load double, double* %7, align 8
  %20 = call i32 @cmsIT8SetDataDbl(i32* null, i32 %17, i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = call double @Mean(%struct.TYPE_5__* %23)
  %25 = call i32 @cmsIT8SetDataDbl(i32* null, i32 %21, i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = call double @Std(%struct.TYPE_5__* %28)
  %30 = call i32 @cmsIT8SetDataDbl(i32* null, i32 %26, i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = call i32 @cmsIT8SetDataDbl(i32* null, i32 %31, i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), double %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = call i32 @cmsIT8SetDataDbl(i32* null, i32 %37, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double %41)
  ret void
}

declare dso_local double @Mean(%struct.TYPE_5__*) #1

declare dso_local i32 @cmsIT8SetData(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cmsIT8SetDataDbl(i32*, i32, i8*, i8*, double) #1

declare dso_local double @Std(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
