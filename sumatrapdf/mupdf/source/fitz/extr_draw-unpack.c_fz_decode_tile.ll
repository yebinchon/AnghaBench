; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-unpack.c_fz_decode_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-unpack.c_fz_decode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i64 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_decode_tile(i32* %0, %struct.TYPE_3__* %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store float* %2, float** %6, align 8
  %19 = load i32, i32* @FZ_MAX_COLORS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @FZ_MAX_COLORS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sub nsw i32 %31, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = call i32 @fz_maxi(i32 1, i64 %47)
  store i32 %48, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %81, %3
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load float*, float** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %54, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %59, 2.550000e+02
  %61 = fptosi float %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load float*, float** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %62, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %68, 2.550000e+02
  %70 = fptosi float %69 to i32
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %22, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %25, i64 %79
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %49

84:                                               ; preds = %49
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %137, %84
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %15, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %88
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %130, %92
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %12, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %96
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %22, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %25, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fz_mul255(i8 zeroext %114, i32 %118)
  %120 = add nsw i32 %109, %119
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call zeroext i8 @fz_clampi(i32 %121, i32 0, i32 255)
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 %122, i8* %126, align 1
  br label %127

127:                                              ; preds = %105
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %101

130:                                              ; preds = %101
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %10, align 8
  br label %96

137:                                              ; preds = %96
  %138 = load i32, i32* %11, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %10, align 8
  br label %88

142:                                              ; preds = %88
  %143 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %143)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fz_maxi(i32, i64) #2

declare dso_local i32 @fz_mul255(i8 zeroext, i32) #2

declare dso_local zeroext i8 @fz_clampi(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
