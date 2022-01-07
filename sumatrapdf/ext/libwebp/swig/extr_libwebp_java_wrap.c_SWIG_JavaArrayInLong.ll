; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayInLong.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/swig/extr_libwebp_java_wrap.c_SWIG_JavaArrayInLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__**, i32)*, i64* (%struct.TYPE_6__**, i32, i32)* }

@SWIG_JavaNullPointerException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"null array\00", align 1
@SWIG_JavaOutOfMemoryError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"array memory allocation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SWIG_JavaArrayInLong(%struct.TYPE_6__** %0, i64** %1, i64** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %16 = load i32, i32* @SWIG_JavaNullPointerException, align 4
  %17 = call i32 @SWIG_JavaThrowException(%struct.TYPE_6__** %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_6__**, i32)*, i32 (%struct.TYPE_6__**, i32)** %21, align 8
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 %22(%struct.TYPE_6__** %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64* (%struct.TYPE_6__**, i32, i32)*, i64* (%struct.TYPE_6__**, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64* %29(%struct.TYPE_6__** %30, i32 %31, i32 0)
  %33 = load i64**, i64*** %7, align 8
  store i64* %32, i64** %33, align 8
  %34 = load i64**, i64*** %7, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %71

38:                                               ; preds = %18
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @calloc(i32 %39, i32 8)
  %41 = inttoptr i64 %40 to i64*
  %42 = load i64**, i64*** %8, align 8
  store i64* %41, i64** %42, align 8
  %43 = load i64**, i64*** %8, align 8
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %48 = load i32, i32* @SWIG_JavaOutOfMemoryError, align 4
  %49 = call i32 @SWIG_JavaThrowException(%struct.TYPE_6__** %47, i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %71

50:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i64**, i64*** %7, align 8
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64**, i64*** %8, align 8
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %61, i64* %66, align 8
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %51

70:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %46, %37, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @SWIG_JavaThrowException(%struct.TYPE_6__**, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
