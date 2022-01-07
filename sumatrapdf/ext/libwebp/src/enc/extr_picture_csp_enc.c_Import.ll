; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_Import.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_csp_enc.c_Import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }

@ALPHA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32, i32)* @Import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Import(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32* %39, i32** %17, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %18, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %19, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %6
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32* [ %55, %53 ], [ null, %56 ]
  store i32* %58, i32** %20, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = call i32 @ImportYUVAFromRGBA(i32* %59, i32* %60, i32* %61, i32* %62, i32 %63, i32 %64, float 0.000000e+00, i32 0, %struct.TYPE_5__* %65)
  store i32 %66, i32* %7, align 4
  br label %188

67:                                               ; preds = %6
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = call i32 @WebPPictureAlloc(%struct.TYPE_5__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %188

72:                                               ; preds = %67
  %73 = call i32 (...) @VP8LDspInit()
  %74 = call i32 (...) @WebPInitAlphaProcessing()
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %145

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %21, align 8
  %81 = load i32, i32* @ALPHA_OFFSET, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi i1 [ false, %77 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 4
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %22, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %86
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i32*, i32** %21, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %103, 4
  %105 = call i32 @memcpy(i32* %101, i32* %102, i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %9, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %21, align 8
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %96

119:                                              ; preds = %96
  br label %144

120:                                              ; preds = %86
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %140, %120
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %19, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32*, i32** %21, align 8
  %129 = call i32 @VP8LConvertBGRAToRGBA(i32* %126, i32 %127, i32* %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %9, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %21, align 8
  br label %140

140:                                              ; preds = %125
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %121

143:                                              ; preds = %121
  br label %144

144:                                              ; preds = %143, %119
  br label %187

145:                                              ; preds = %72
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %23, align 8
  %149 = load i32, i32* %11, align 4
  %150 = icmp sge i32 %149, 3
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %183, %145
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %153
  %158 = load i32*, i32** %15, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32*, i32** %23, align 8
  %164 = call i32 @WebPPackRGB(i32* %158, i32* %159, i32* %160, i32 %161, i32 %162, i32* %163)
  %165 = load i32, i32* %10, align 4
  %166 = load i32*, i32** %15, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %15, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32*, i32** %16, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %16, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32*, i32** %17, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %17, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %23, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %23, align 8
  br label %183

183:                                              ; preds = %157
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %153

186:                                              ; preds = %153
  br label %187

187:                                              ; preds = %186, %144
  store i32 1, i32* %7, align 4
  br label %188

188:                                              ; preds = %187, %71, %57
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i32 @ImportYUVAFromRGBA(i32*, i32*, i32*, i32*, i32, i32, float, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WebPPictureAlloc(%struct.TYPE_5__*) #1

declare dso_local i32 @VP8LDspInit(...) #1

declare dso_local i32 @WebPInitAlphaProcessing(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @VP8LConvertBGRAToRGBA(i32*, i32, i32*) #1

declare dso_local i32 @WebPPackRGB(i32*, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
