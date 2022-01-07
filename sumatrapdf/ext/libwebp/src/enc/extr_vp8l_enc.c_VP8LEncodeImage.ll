; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_VP8LEncodeImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_VP8LEncodeImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { float*, i32, i32 }
%struct.TYPE_24__ = type { i64 }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_NULL_PARAMETER = common dso_local global i64 0, align 8
@WEBP_HINT_GRAPH = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_USER_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8LEncodeImage(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %203

21:                                               ; preds = %2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = icmp eq %struct.TYPE_22__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %21
  %30 = load i64, i64* @VP8_ENC_ERROR_NULL_PARAMETER, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @WebPEncodingSetError(%struct.TYPE_21__* %31, i64 %32)
  store i32 0, i32* %3, align 4
  br label %203

34:                                               ; preds = %24
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WEBP_HINT_GRAPH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  br label %55

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = mul nsw i32 %53, 2
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i32 [ %49, %46 ], [ %54, %50 ]
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @VP8LBitWriterInit(%struct.TYPE_24__* %13, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i64 %61, i64* %12, align 8
  br label %187

62:                                               ; preds = %55
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = call i32 @WebPReportProgress(%struct.TYPE_21__* %63, i32 1, i32* %10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %143, %131, %118, %66
  %68 = load i64, i64* @VP8_ENC_ERROR_USER_ABORT, align 8
  store i64 %68, i64* %12, align 8
  br label %187

69:                                               ; preds = %62
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  %73 = icmp ne %struct.TYPE_23__* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %14, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %79 = call i32 @memset(%struct.TYPE_23__* %78, i32 0, i32 16)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 0
  store float 9.900000e+01, float* %83, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 1
  store float 9.900000e+01, float* %87, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  store float 9.900000e+01, float* %91, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 3
  store float 9.900000e+01, float* %95, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 4
  store float 9.900000e+01, float* %99, align 4
  br label %100

100:                                              ; preds = %74, %69
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = call i32 @WriteImageSize(%struct.TYPE_21__* %101, %struct.TYPE_24__* %13)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i64 %105, i64* %12, align 8
  br label %187

106:                                              ; preds = %100
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = call i32 @WebPPictureHasTransparency(%struct.TYPE_21__* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @WriteRealAlphaAndVersion(%struct.TYPE_24__* %13, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i64 %113, i64* %12, align 8
  br label %187

114:                                              ; preds = %106
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = call i32 @WebPReportProgress(%struct.TYPE_21__* %115, i32 5, i32* %10)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %67

119:                                              ; preds = %114
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = call i64 @VP8LEncodeStream(%struct.TYPE_22__* %120, %struct.TYPE_21__* %121, %struct.TYPE_24__* %13, i32 1)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @VP8_ENC_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %187

127:                                              ; preds = %119
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = call i32 @WebPReportProgress(%struct.TYPE_21__* %128, i32 90, i32* %10)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %67

132:                                              ; preds = %127
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = call i64 @WriteImage(%struct.TYPE_21__* %133, %struct.TYPE_24__* %13, i64* %9)
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @VP8_ENC_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %187

139:                                              ; preds = %132
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = call i32 @WebPReportProgress(%struct.TYPE_21__* %140, i32 100, i32* %10)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %67

144:                                              ; preds = %139
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = icmp ne %struct.TYPE_23__* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load i64, i64* %9, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %151
  store i32 %157, i32* %155, align 8
  %158 = load i64, i64* %9, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 2
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %149, %144
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = icmp ne %struct.TYPE_23__* %167, null
  br i1 %168, label %169, label %186

169:                                              ; preds = %164
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 15
  %172 = ashr i32 %171, 4
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 15
  %175 = ashr i32 %174, 4
  store i32 %175, i32* %16, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %16, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 16
  %184 = trunc i64 %183 to i32
  %185 = call i32 @memset(%struct.TYPE_23__* %178, i32 0, i32 %184)
  br label %186

186:                                              ; preds = %169, %164
  br label %187

187:                                              ; preds = %186, %138, %126, %112, %104, %67, %60
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i64, i64* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i64 %192, i64* %12, align 8
  br label %193

193:                                              ; preds = %191, %187
  %194 = call i32 @VP8LBitWriterWipeOut(%struct.TYPE_24__* %13)
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* @VP8_ENC_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = load i64, i64* %12, align 8
  %201 = call i32 @WebPEncodingSetError(%struct.TYPE_21__* %199, i64 %200)
  store i32 0, i32* %3, align 4
  br label %203

202:                                              ; preds = %193
  store i32 1, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %198, %29, %20
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @VP8LBitWriterInit(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @WebPReportProgress(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @WriteImageSize(%struct.TYPE_21__*, %struct.TYPE_24__*) #1

declare dso_local i32 @WebPPictureHasTransparency(%struct.TYPE_21__*) #1

declare dso_local i32 @WriteRealAlphaAndVersion(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @VP8LEncodeStream(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @WriteImage(%struct.TYPE_21__*, %struct.TYPE_24__*, i64*) #1

declare dso_local i32 @VP8LBitWriterWipeOut(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
