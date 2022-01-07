; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pclm.c_pclm_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pclm.c_pclm_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @pclm_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pclm_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %13, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %18, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %6
  br label %111

46:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %90, %46
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %18, align 4
  %56 = srem i32 %54, %55
  store i32 %56, i32* %20, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %17, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %20, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %59, %65
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %67, i64 %73
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %17, align 4
  %77 = mul nsw i32 %75, %76
  %78 = call i32 @memcpy(i64 %66, i8* %74, i32 %77)
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %18, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %51
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @flush_strip(i32* %84, %struct.TYPE_7__* %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %51
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %47

93:                                               ; preds = %47
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = srem i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %18, align 4
  %109 = srem i32 %107, %108
  %110 = call i32 @flush_strip(i32* %105, %struct.TYPE_7__* %106, i32 %109)
  br label %111

111:                                              ; preds = %45, %104, %99, %93
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @flush_strip(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
