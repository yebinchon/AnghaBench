; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_generic_mmr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_mmr.c_jbig2_decode_generic_mmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32* }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to decode mmr line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_decode_generic_mmr(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @jbig2_decode_mmr_init(i32* %14, i32 %29, i64 %32, i32* %33, i64 %34)
  store i64 0, i64* %18, align 8
  br label %36

36:                                               ; preds = %69, %6
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %18, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %72

47:                                               ; preds = %45
  %48 = load i32*, i32** %16, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @memset(i32* %48, i32 0, i64 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @jbig2_decode_mmr_line(i32* %51, i32* %14, i32* %52, i32* %53, i32* %20)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @jbig2_error(i32* %58, i32 %59, i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* %7, align 4
  br label %93

64:                                               ; preds = %47
  %65 = load i32*, i32** %16, align 8
  store i32* %65, i32** %17, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %16, align 8
  br label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %18, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %18, align 8
  br label %36

72:                                               ; preds = %45
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i64, i64* %18, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32*, i32** %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = sub nsw i64 %86, %87
  %89 = mul nsw i64 %83, %88
  %90 = call i32 @memset(i32* %82, i32 0, i64 %89)
  br label %91

91:                                               ; preds = %81, %75, %72
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %57
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @jbig2_decode_mmr_init(i32*, i32, i64, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @jbig2_decode_mmr_line(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
