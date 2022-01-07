; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_VP8LHistogramAddSinglePixOrCopy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_VP8LHistogramAddSinglePixOrCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32* }

@NUM_LITERAL_CODES = common dso_local global i32 0, align 4
@NUM_LENGTH_CODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8LHistogramAddSinglePixOrCopy(%struct.TYPE_3__* %0, i32* %1, i32 (i32, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 (i32, i32)* %2, i32 (i32, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @PixOrCopyIsLiteral(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @PixOrCopyLiteral(i32* %19, i32 3)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @PixOrCopyLiteral(i32* %27, i32 2)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @PixOrCopyLiteral(i32* %35, i32 1)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @PixOrCopyLiteral(i32* %43, i32 0)
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %104

48:                                               ; preds = %4
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @PixOrCopyIsCacheIdx(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %54 = load i32, i32* @NUM_LENGTH_CODES, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @PixOrCopyCacheIdx(i32* %56)
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %103

67:                                               ; preds = %48
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @PixOrCopyLength(i32* %68)
  %70 = call i32 @VP8LPrefixEncodeBits(i32 %69, i32* %10, i32* %11)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @NUM_LITERAL_CODES, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %82 = icmp eq i32 (i32, i32)* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @PixOrCopyDistance(i32* %84)
  %86 = call i32 @VP8LPrefixEncodeBits(i32 %85, i32* %10, i32* %11)
  br label %94

87:                                               ; preds = %67
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @PixOrCopyDistance(i32* %90)
  %92 = call i32 %88(i32 %89, i32 %91)
  %93 = call i32 @VP8LPrefixEncodeBits(i32 %92, i32* %10, i32* %11)
  br label %94

94:                                               ; preds = %87, %83
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %52
  br label %104

104:                                              ; preds = %103, %15
  ret void
}

declare dso_local i64 @PixOrCopyIsLiteral(i32*) #1

declare dso_local i64 @PixOrCopyLiteral(i32*, i32) #1

declare dso_local i64 @PixOrCopyIsCacheIdx(i32*) #1

declare dso_local i32 @PixOrCopyCacheIdx(i32*) #1

declare dso_local i32 @VP8LPrefixEncodeBits(i32, i32*, i32*) #1

declare dso_local i32 @PixOrCopyLength(i32*) #1

declare dso_local i32 @PixOrCopyDistance(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
