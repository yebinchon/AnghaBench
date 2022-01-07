; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayOutLong.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayOutLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i32*, i64*, i32)*, i64* (%struct.TYPE_6__**, i32*, i32)*, i32* (%struct.TYPE_6__**, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SWIG_JavaArrayOutLong(%struct.TYPE_6__** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32* (%struct.TYPE_6__**, i32)*, i32* (%struct.TYPE_6__**, i32)** %13, align 8
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32* %14(%struct.TYPE_6__** %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %60

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64* (%struct.TYPE_6__**, i32*, i32)*, i64* (%struct.TYPE_6__**, i32*, i32)** %24, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i64* %25(%struct.TYPE_6__** %26, i32* %27, i32 0)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %60

32:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64*, i64** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_6__**, i32*, i64*, i32)*, i32 (%struct.TYPE_6__**, i32*, i64*, i32)** %53, align 8
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 %54(%struct.TYPE_6__** %55, i32* %56, i64* %57, i32 0)
  %59 = load i32*, i32** %10, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %50, %31, %20
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
