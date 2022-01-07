; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_VP8LEncodeStream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_VP8LEncodeStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_27__ = type { i32*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, i8*, %struct.TYPE_27__*, i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_26__*, i8** }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)* }

@VP8_ENC_OK = common dso_local global i8* null, align 8
@CRUNCH_CONFIGS_MAX = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i8* null, align 8
@EncodeStreamHook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @VP8LEncodeStream(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca %struct.TYPE_24__, align 8
  %20 = alloca %struct.TYPE_28__, align 8
  %21 = alloca %struct.TYPE_28__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_23__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_24__*, align 8
  %28 = alloca %struct.TYPE_28__*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %30 = load i8*, i8** @VP8_ENC_OK, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = call i8* @VP8LEncoderNew(%struct.TYPE_26__* %31, %struct.TYPE_25__* %32)
  %34 = bitcast i8* %33 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  %35 = load i32, i32* @CRUNCH_CONFIGS_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %12, align 8
  %38 = alloca i8*, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %39 = call %struct.TYPE_23__* (...) @WebPGetWorkerInterface()
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %24, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %41 = icmp eq %struct.TYPE_27__* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %44 = call i32 @EncoderAnalyze(%struct.TYPE_27__* %43, i8** %38, i32* %14, i32* %17)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %48 = call i32 @EncoderInit(%struct.TYPE_27__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = call i32 @VP8LBitWriterInit(i32* %23, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50, %46, %42, %4
  %54 = load i8*, i8** @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i8* %54, i8** %9, align 8
  br label %327

55:                                               ; preds = %50
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load i32, i32* %14, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %81, %60
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %38, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 9
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %75, i8** %80, align 8
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %15, align 4
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %55
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %105, %87
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %38, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 9
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %99, i8** %104, align 8
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load i32, i32* %14, align 4
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* %15, align 4
  %112 = icmp sgt i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 2, i32 1
  store i32 %114, i32* %26, align 4
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %229, %108
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %26, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %232

119:                                              ; preds = %115
  %120 = load i32, i32* %16, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %124

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi %struct.TYPE_24__* [ %18, %122 ], [ %19, %123 ]
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %27, align 8
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %130

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %128
  %131 = phi %struct.TYPE_28__* [ %20, %128 ], [ %21, %129 ]
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %28, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 8
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %134, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 7
  store %struct.TYPE_25__* %135, %struct.TYPE_25__** %137, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %16, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %130
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 6
  store i32* %149, i32** %151, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 5
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 4
  store %struct.TYPE_27__* %155, %struct.TYPE_27__** %157, align 8
  br label %215

158:                                              ; preds = %130
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %163
  %166 = phi i32* [ null, %163 ], [ %22, %164 ]
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 6
  store i32* %166, i32** %168, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 @VP8LBitWriterClone(i32* %169, i32* %23)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %165
  %173 = load i8*, i8** @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i8* %173, i8** %9, align 8
  br label %327

174:                                              ; preds = %165
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 5
  store i32* %23, i32** %176, align 8
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %179 = call i8* @VP8LEncoderNew(%struct.TYPE_26__* %177, %struct.TYPE_25__* %178)
  %180 = bitcast i8* %179 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %180, %struct.TYPE_27__** %11, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %182 = icmp eq %struct.TYPE_27__* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %174
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %185 = call i32 @EncoderInit(%struct.TYPE_27__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183, %174
  %188 = load i8*, i8** @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i8* %188, i8** %9, align 8
  br label %327

189:                                              ; preds = %183
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @memcpy(i32* %207, i32* %210, i32 8)
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 4
  store %struct.TYPE_27__* %212, %struct.TYPE_27__** %214, align 8
  br label %215

215:                                              ; preds = %189, %146
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 5
  %218 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %217, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %220 = call i32 %218(%struct.TYPE_24__* %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  store %struct.TYPE_28__* %221, %struct.TYPE_28__** %223, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  store i32* null, i32** %225, align 8
  %226 = load i32, i32* @EncodeStreamHook, align 4
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %215
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %115

232:                                              ; preds = %115
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %260

235:                                              ; preds = %232
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 4
  %238 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %237, align 8
  %239 = call i32 %238(%struct.TYPE_24__* %19)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %235
  %242 = load i8*, i8** @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i8* %242, i8** %9, align 8
  br label %327

243:                                              ; preds = %235
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @memcpy(i32* %22, i32* %251, i32 4)
  br label %253

253:                                              ; preds = %248, %243
  %254 = load i8*, i8** @VP8_ENC_OK, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  store i8* %254, i8** %255, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 3
  %258 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %257, align 8
  %259 = call i32 %258(%struct.TYPE_24__* %19)
  br label %260

260:                                              ; preds = %253, %232
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 2
  %263 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %262, align 8
  %264 = call i32 %263(%struct.TYPE_24__* %18)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %266, align 8
  %268 = call i32 %267(%struct.TYPE_24__* %18)
  store i32 %268, i32* %25, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %270, align 8
  %272 = call i32 %271(%struct.TYPE_24__* %18)
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %319

275:                                              ; preds = %260
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %277, align 8
  %279 = call i32 %278(%struct.TYPE_24__* %19)
  store i32 %279, i32* %29, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 1
  %282 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %281, align 8
  %283 = call i32 %282(%struct.TYPE_24__* %19)
  %284 = load i32, i32* %25, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %275
  %287 = load i32, i32* %29, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %286, %275
  %290 = load i32, i32* %25, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  br label %298

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  br label %298

298:                                              ; preds = %295, %292
  %299 = phi i8* [ %294, %292 ], [ %297, %295 ]
  store i8* %299, i8** %9, align 8
  br label %327

300:                                              ; preds = %286
  %301 = call i64 @VP8LBitWriterNumBytes(i32* %23)
  %302 = load i32*, i32** %7, align 8
  %303 = call i64 @VP8LBitWriterNumBytes(i32* %302)
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %305, label %318

305:                                              ; preds = %300
  %306 = load i32*, i32** %7, align 8
  %307 = call i32 @VP8LBitWriterSwap(i32* %306, i32* %23)
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %305
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @memcpy(i32* %315, i32* %22, i32 4)
  br label %317

317:                                              ; preds = %312, %305
  br label %318

318:                                              ; preds = %317, %300
  br label %326

319:                                              ; preds = %260
  %320 = load i32, i32* %25, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %324 = load i8*, i8** %323, align 8
  store i8* %324, i8** %9, align 8
  br label %327

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %325, %318
  br label %327

327:                                              ; preds = %326, %322, %298, %241, %187, %172, %53
  %328 = call i32 @VP8LBitWriterWipeOut(i32* %23)
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %330 = call i32 @VP8LEncoderDelete(%struct.TYPE_27__* %329)
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %332 = call i32 @VP8LEncoderDelete(%struct.TYPE_27__* %331)
  %333 = load i8*, i8** %9, align 8
  %334 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %334)
  ret i8* %333
}

declare dso_local i8* @VP8LEncoderNew(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_23__* @WebPGetWorkerInterface(...) #1

declare dso_local i32 @EncoderAnalyze(%struct.TYPE_27__*, i8**, i32*, i32*) #1

declare dso_local i32 @EncoderInit(%struct.TYPE_27__*) #1

declare dso_local i32 @VP8LBitWriterInit(i32*, i32) #1

declare dso_local i32 @VP8LBitWriterClone(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @VP8LBitWriterNumBytes(i32*) #1

declare dso_local i32 @VP8LBitWriterSwap(i32*, i32*) #1

declare dso_local i32 @VP8LBitWriterWipeOut(i32*) #1

declare dso_local i32 @VP8LEncoderDelete(%struct.TYPE_27__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
