; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayArgoutLonglong.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayArgoutLonglong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32)*, i32 (%struct.TYPE_5__**, i32, i64*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SWIG_JavaArrayArgoutLonglong(%struct.TYPE_5__** %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_5__**, i32)*, i32 (%struct.TYPE_5__**, i32)** %13, align 8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 %14(%struct.TYPE_5__** %15, i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %32, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_5__**, i32, i64*, i32)*, i32 (%struct.TYPE_5__**, i32, i64*, i32)** %38, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 %39(%struct.TYPE_5__** %40, i32 %41, i64* %42, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
