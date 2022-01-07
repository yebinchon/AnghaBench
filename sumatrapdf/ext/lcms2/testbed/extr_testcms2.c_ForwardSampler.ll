; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ForwardSampler.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_ForwardSampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*, i8*)* @ForwardSampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ForwardSampler(i32 %0, i64* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca [4 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %9, align 8
  %18 = call i32 (...) @DbgThread()
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %24 = call i32 @cmsDoTransform(i32 %18, i32 %21, i64* %22, i64* %23, i32 1)
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = sub nsw i64 1, %26
  store i64 %27, i64* %12, align 8
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 1, %29
  store i64 %30, i64* %13, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %32 = load i64, i64* %31, align 16
  %33 = sub nsw i64 1, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @cmsmin(i64 %38, i64 %39)
  br label %45

41:                                               ; preds = %4
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @cmsmin(i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %47, i64* %48, align 16
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %51, i64* %52, align 16
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %53, i64* %54, align 8
  %55 = call i32 (...) @DbgThread()
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @cmsDoTransform(i32 %55, i32 %58, i64* %59, i64* %60, i32 1)
  ret i32 1
}

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, i64*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsmin(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
