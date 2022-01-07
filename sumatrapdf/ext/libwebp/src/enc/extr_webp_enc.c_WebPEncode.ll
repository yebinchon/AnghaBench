; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_WebPEncode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_WebPEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, float, i32, i64, i32 }
%struct.TYPE_27__ = type { i64, i64, i32*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_29__ = type { i32 }

@VP8_ENC_OK = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_NULL_PARAMETER = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_INVALID_CONFIGURATION = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_BAD_DIMENSION = common dso_local global i32 0, align 4
@WEBP_MAX_DIMENSION = common dso_local global i64 0, align 8
@WEBP_YUV420 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPEncode(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %12 = icmp eq %struct.TYPE_27__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %248

14:                                               ; preds = %2
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = load i32, i32* @VP8_ENC_OK, align 4
  %17 = call i32 @WebPEncodingSetError(%struct.TYPE_27__* %15, i32 %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = icmp eq %struct.TYPE_28__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = load i32, i32* @VP8_ENC_ERROR_NULL_PARAMETER, align 4
  %23 = call i32 @WebPEncodingSetError(%struct.TYPE_27__* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %248

24:                                               ; preds = %14
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %26 = call i32 @WebPValidateConfig(%struct.TYPE_28__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = load i32, i32* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 4
  %31 = call i32 @WebPEncodingSetError(%struct.TYPE_27__* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %248

32:                                               ; preds = %24
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = load i32, i32* @VP8_ENC_ERROR_BAD_DIMENSION, align 4
  %45 = call i32 @WebPEncodingSetError(%struct.TYPE_27__* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %248

46:                                               ; preds = %37
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WEBP_MAX_DIMENSION, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WEBP_MAX_DIMENSION, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = load i32, i32* @VP8_ENC_ERROR_BAD_DIMENSION, align 4
  %61 = call i32 @WebPEncodingSetError(%struct.TYPE_27__* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %248

62:                                               ; preds = %52
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %224, label %77

77:                                               ; preds = %72
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %7, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %142

97:                                               ; preds = %92, %87, %82, %77
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102, %97
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = call i32 @WebPPictureSharpARGBToYUVA(%struct.TYPE_27__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %248

113:                                              ; preds = %108
  br label %141

114:                                              ; preds = %102
  store float 0.000000e+00, float* %8, align 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load float, float* %122, align 4
  %124 = fdiv float %123, 1.000000e+02
  store float %124, float* %9, align 4
  %125 = load float, float* %9, align 4
  %126 = load float, float* %9, align 4
  %127 = fmul float %125, %126
  store float %127, float* %10, align 4
  %128 = load float, float* %10, align 4
  %129 = fmul float -5.000000e-01, %128
  %130 = load float, float* %10, align 4
  %131 = fmul float %129, %130
  %132 = fadd float 1.000000e+00, %131
  store float %132, float* %8, align 4
  br label %133

133:                                              ; preds = %120, %114
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %135 = load i32, i32* @WEBP_YUV420, align 4
  %136 = load float, float* %8, align 4
  %137 = call i32 @WebPPictureARGBToYUVADithered(%struct.TYPE_27__* %134, i32 %135, float %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %248

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %92
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %149 = call i32 @WebPCleanupTransparentArea(%struct.TYPE_27__* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %153 = call %struct.TYPE_29__* @InitVP8Encoder(%struct.TYPE_28__* %151, %struct.TYPE_27__* %152)
  store %struct.TYPE_29__* %153, %struct.TYPE_29__** %7, align 8
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %155 = icmp eq %struct.TYPE_29__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %248

157:                                              ; preds = %150
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %159 = call i32 @VP8EncAnalyze(%struct.TYPE_29__* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %164 = call i64 @VP8EncStartAlpha(%struct.TYPE_29__* %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %162, %157
  %167 = phi i1 [ false, %157 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %6, align 4
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %178 = call i64 @VP8EncLoop(%struct.TYPE_29__* %177)
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i1 [ false, %173 ], [ %179, %176 ]
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %6, align 4
  br label %193

183:                                              ; preds = %166
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %188 = call i64 @VP8EncTokenLoop(%struct.TYPE_29__* %187)
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %186, %183
  %191 = phi i1 [ false, %183 ], [ %189, %186 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %198 = call i64 @VP8EncFinishAlpha(%struct.TYPE_29__* %197)
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %196, %193
  %201 = phi i1 [ false, %193 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %207 = call i64 @VP8EncWrite(%struct.TYPE_29__* %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %205, %200
  %210 = phi i1 [ false, %200 ], [ %208, %205 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %6, align 4
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %213 = call i32 @StoreStats(%struct.TYPE_29__* %212)
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %209
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %218 = call i32 @VP8EncFreeBitWriters(%struct.TYPE_29__* %217)
  br label %219

219:                                              ; preds = %216, %209
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %221 = call i32 @DeleteVP8Encoder(%struct.TYPE_29__* %220)
  %222 = load i32, i32* %6, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %6, align 4
  br label %246

224:                                              ; preds = %72
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %231 = call i32 @WebPPictureYUVAToARGB(%struct.TYPE_27__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  store i32 0, i32* %3, align 4
  br label %248

234:                                              ; preds = %229, %224
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %241 = call i32 @WebPCleanupTransparentAreaLossless(%struct.TYPE_27__* %240)
  br label %242

242:                                              ; preds = %239, %234
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %245 = call i32 @VP8LEncodeImage(%struct.TYPE_28__* %243, %struct.TYPE_27__* %244)
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %242, %219
  %247 = load i32, i32* %6, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %233, %156, %139, %112, %58, %42, %28, %20, %13
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @WebPValidateConfig(%struct.TYPE_28__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WebPPictureSharpARGBToYUVA(%struct.TYPE_27__*) #1

declare dso_local i32 @WebPPictureARGBToYUVADithered(%struct.TYPE_27__*, i32, float) #1

declare dso_local i32 @WebPCleanupTransparentArea(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @InitVP8Encoder(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @VP8EncAnalyze(%struct.TYPE_29__*) #1

declare dso_local i64 @VP8EncStartAlpha(%struct.TYPE_29__*) #1

declare dso_local i64 @VP8EncLoop(%struct.TYPE_29__*) #1

declare dso_local i64 @VP8EncTokenLoop(%struct.TYPE_29__*) #1

declare dso_local i64 @VP8EncFinishAlpha(%struct.TYPE_29__*) #1

declare dso_local i64 @VP8EncWrite(%struct.TYPE_29__*) #1

declare dso_local i32 @StoreStats(%struct.TYPE_29__*) #1

declare dso_local i32 @VP8EncFreeBitWriters(%struct.TYPE_29__*) #1

declare dso_local i32 @DeleteVP8Encoder(%struct.TYPE_29__*) #1

declare dso_local i32 @WebPPictureYUVAToARGB(%struct.TYPE_27__*) #1

declare dso_local i32 @WebPCleanupTransparentAreaLossless(%struct.TYPE_27__*) #1

declare dso_local i32 @VP8LEncodeImage(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
