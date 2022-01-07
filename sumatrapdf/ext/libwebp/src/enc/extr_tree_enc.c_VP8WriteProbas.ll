; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_tree_enc.c_VP8WriteProbas.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_tree_enc.c_VP8WriteProbas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64****, i64, i32 }

@NUM_TYPES = common dso_local global i32 0, align 4
@NUM_BANDS = common dso_local global i32 0, align 4
@NUM_CTX = common dso_local global i32 0, align 4
@NUM_PROBAS = common dso_local global i32 0, align 4
@VP8CoeffsProba0 = common dso_local global i64**** null, align 8
@VP8CoeffsUpdateProba = common dso_local global i32**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8WriteProbas(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %108, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NUM_TYPES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %104, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUM_BANDS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %107

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %100, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NUM_CTX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %103

25:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %96, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NUM_PROBAS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64****, i64***** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64***, i64**** %33, i64 %35
  %37 = load i64***, i64**** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64**, i64*** %37, i64 %39
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64****, i64***** @VP8CoeffsProba0, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64***, i64**** %51, i64 %53
  %55 = load i64***, i64**** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64**, i64*** %55, i64 %57
  %59 = load i64**, i64*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %50, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32****, i32***** @VP8CoeffsUpdateProba, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32***, i32**** %72, i64 %74
  %76 = load i32***, i32**** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32**, i32*** %76, i64 %78
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @VP8PutBit(i32* %70, i32 %71, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %30
  %92 = load i32*, i32** %3, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @VP8PutBits(i32* %92, i64 %93, i32 8)
  br label %95

95:                                               ; preds = %91, %30
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %26

99:                                               ; preds = %26
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %21

103:                                              ; preds = %21
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %16

107:                                              ; preds = %16
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %11

111:                                              ; preds = %11
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @VP8PutBitUniform(i32* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @VP8PutBits(i32* %119, i64 %122, i32 8)
  br label %124

124:                                              ; preds = %118, %111
  ret void
}

declare dso_local i64 @VP8PutBit(i32*, i32, i32) #1

declare dso_local i32 @VP8PutBits(i32*, i64, i32) #1

declare dso_local i64 @VP8PutBitUniform(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
