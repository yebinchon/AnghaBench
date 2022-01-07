; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-unpack.c_fz_decode_indexed_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-unpack.c_fz_decode_indexed_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_decode_indexed_tile(i32* %0, %struct.TYPE_3__* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load i32, i32* @FZ_MAX_COLORS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @FZ_MAX_COLORS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sub nsw i32 %36, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %99, %4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load float*, float** %7, align 8
  %59 = load i32, i32* %18, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %63, 2.560000e+02
  %65 = fptosi float %64 to i32
  store i32 %65, i32* %20, align 4
  %66 = load float*, float** %7, align 8
  %67 = load i32, i32* %18, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fmul float %72, 2.560000e+02
  %74 = fptosi float %73 to i32
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %27, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %30, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %57
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 256
  %93 = icmp ne i32 %90, %92
  br label %94

94:                                               ; preds = %89, %57
  %95 = phi i1 [ true, %57 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %17, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 1, i32* %22, align 4
  br label %167

106:                                              ; preds = %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %161, %106
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %19, align 4
  %113 = icmp ne i32 %111, 0
  br i1 %113, label %114, label %166

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %156, %114
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %14, align 4
  %121 = icmp ne i32 %119, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %153, %122
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %123
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %27, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl i32 %137, 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %30, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %138, %142
  %144 = ashr i32 %143, 8
  %145 = add nsw i32 %131, %144
  %146 = ashr i32 %145, 8
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %23, align 4
  %148 = call zeroext i8 @fz_clampi(i32 %147, i32 0, i32 255)
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 %148, i8* %152, align 1
  br label %153

153:                                              ; preds = %127
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %123

156:                                              ; preds = %123
  %157 = load i32, i32* %15, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %12, align 8
  br label %118

161:                                              ; preds = %118
  %162 = load i32, i32* %13, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %12, align 8
  br label %110

166:                                              ; preds = %110
  store i32 0, i32* %22, align 4
  br label %167

167:                                              ; preds = %166, %105
  %168 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %22, align 4
  switch i32 %169, label %171 [
    i32 0, label %170
    i32 1, label %170
  ]

170:                                              ; preds = %167, %167
  ret void

171:                                              ; preds = %167
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

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
