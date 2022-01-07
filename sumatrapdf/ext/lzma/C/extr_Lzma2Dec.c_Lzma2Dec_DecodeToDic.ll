; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Dec.c_Lzma2Dec_DecodeToDic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, %struct.TYPE_10__, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64 }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@LZMA2_STATE_FINISHED = common dso_local global i64 0, align 8
@LZMA2_STATE_ERROR = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i64 0, align 8
@LZMA_STATUS_NOT_FINISHED = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@LZMA2_STATE_DATA = common dso_local global i64 0, align 8
@LZMA2_STATE_DATA_CONT = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@LZMA_FINISH_END = common dso_local global i64 0, align 8
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i64 0, align 8
@True = common dso_local global i8* null, align 8
@False = common dso_local global i8* null, align 8
@LZMA2_STATE_CONTROL = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2Dec_DecodeToDic(%struct.TYPE_9__* %0, i64 %1, i32* %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %25 = load i64*, i64** %11, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64*, i64** %11, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %29 = load i64*, i64** %13, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %343, %81, %6
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LZMA2_STATE_FINISHED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %344

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LZMA2_STATE_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %47, i32* %7, align 4
  br label %348

48:                                               ; preds = %36
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @LZMA_FINISH_ANY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* @LZMA_STATUS_NOT_FINISHED, align 8
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @SZ_OK, align 4
  store i32 %59, i32* %7, align 4
  br label %348

60:                                               ; preds = %52, %48
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %79 = load i64*, i64** %13, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* @SZ_OK, align 4
  store i32 %80, i32* %7, align 4
  br label %348

81:                                               ; preds = %72
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %86, align 4
  %89 = call i64 @Lzma2Dec_UpdateState(%struct.TYPE_9__* %85, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %30

92:                                               ; preds = %66, %60
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %16, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %96, %98
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* @LZMA_FINISH_ANY, align 8
  store i64 %100, i64* %18, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* @LZMA_FINISH_END, align 8
  store i64 %110, i64* %18, align 8
  br label %111

111:                                              ; preds = %106, %92
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = call i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %205

115:                                              ; preds = %111
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %122 = load i64*, i64** %13, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @SZ_OK, align 4
  store i32 %123, i32* %7, align 4
  br label %348

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %124
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LZMA2_CONTROL_COPY_RESET_DIC, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %19, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load i8*, i8** @True, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 7
  store i8* %142, i8** %146, align 8
  br label %155

147:                                              ; preds = %130
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %153, i32* %7, align 4
  br label %348

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %141
  %156 = load i8*, i8** @False, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 6
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 4
  %161 = load i8*, i8** %19, align 8
  %162 = load i8*, i8** @False, align 8
  %163 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__* %160, i8* %161, i8* %162)
  br label %164

164:                                              ; preds = %155, %124
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* %16, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i64, i64* %16, align 8
  store i64 %169, i64* %17, align 8
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i64, i64* %17, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %174, i32* %7, align 4
  br label %348

175:                                              ; preds = %170
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  %178 = load i32*, i32** %10, align 8
  %179 = load i64, i64* %17, align 8
  %180 = call i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_10__* %177, i32* %178, i64 %179)
  %181 = load i64, i64* %17, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %10, align 8
  %184 = load i64, i64* %17, align 8
  %185 = load i64*, i64** %11, align 8
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %184
  store i64 %187, i64* %185, align 8
  %188 = load i64, i64* %17, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %191, %188
  store i64 %192, i64* %190, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %175
  %198 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  br label %201

199:                                              ; preds = %175
  %200 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i64 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  br label %343

205:                                              ; preds = %111
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @LZMA2_STATE_DATA, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %256

211:                                              ; preds = %205
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %213 = call i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__* %212)
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %22, align 4
  %215 = icmp eq i32 %214, 3
  %216 = zext i1 %215 to i32
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  store i8* %218, i8** %23, align 8
  %219 = load i32, i32* %22, align 4
  %220 = icmp sgt i32 %219, 0
  %221 = zext i1 %220 to i32
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  store i8* %223, i8** %24, align 8
  %224 = load i8*, i8** %23, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %211
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 6
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %239, label %231

231:                                              ; preds = %226, %211
  %232 = load i8*, i8** %24, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %241, label %234

234:                                              ; preds = %231
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 5
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %234, %226
  %240 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %240, i32* %7, align 4
  br label %348

241:                                              ; preds = %234, %231
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  %244 = load i8*, i8** %23, align 8
  %245 = load i8*, i8** %24, align 8
  %246 = call i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__* %243, i8* %244, i8* %245)
  %247 = load i8*, i8** @False, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @False, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 5
  store i8* %250, i8** %252, align 8
  %253 = load i64, i64* @LZMA2_STATE_DATA_CONT, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %241, %205
  %257 = load i64, i64* %17, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp sgt i64 %257, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %17, align 8
  br label %266

266:                                              ; preds = %262, %256
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i64, i64* %15, align 8
  %270 = load i64, i64* %16, align 8
  %271 = add nsw i64 %269, %270
  %272 = load i32*, i32** %10, align 8
  %273 = load i64, i64* %18, align 8
  %274 = load i64*, i64** %13, align 8
  %275 = call i32 @LzmaDec_DecodeToDic(%struct.TYPE_10__* %268, i64 %271, i32* %272, i64* %17, i64 %273, i64* %274)
  store i32 %275, i32* %21, align 4
  %276 = load i64, i64* %17, align 8
  %277 = load i32*, i32** %10, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 %276
  store i32* %278, i32** %10, align 8
  %279 = load i64, i64* %17, align 8
  %280 = load i64*, i64** %11, align 8
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, %279
  store i64 %282, i64* %280, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = sub nsw i64 %286, %283
  store i64 %287, i64* %285, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %15, align 8
  %293 = sub nsw i64 %291, %292
  store i64 %293, i64* %20, align 8
  %294 = load i64, i64* %20, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = sub nsw i64 %297, %294
  store i64 %298, i64* %296, align 8
  %299 = load i32, i32* %21, align 4
  %300 = call i32 @RINOK(i32 %299)
  %301 = load i64*, i64** %13, align 8
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %266
  %306 = load i32, i32* %21, align 4
  store i32 %306, i32* %7, align 4
  br label %348

307:                                              ; preds = %266
  %308 = load i64, i64* %17, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %307
  %311 = load i64, i64* %20, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %334

313:                                              ; preds = %310
  %314 = load i64*, i64** %13, align 8
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %317 = icmp ne i64 %315, %316
  br i1 %317, label %328, label %318

318:                                              ; preds = %313
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %318
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %323, %318, %313
  %329 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %329, i32* %7, align 4
  br label %348

330:                                              ; preds = %323
  %331 = load i64, i64* @LZMA2_STATE_CONTROL, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  br label %334

334:                                              ; preds = %330, %310, %307
  %335 = load i64*, i64** %13, align 8
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load i64, i64* @LZMA_STATUS_NOT_FINISHED, align 8
  %341 = load i64*, i64** %13, align 8
  store i64 %340, i64* %341, align 8
  br label %342

342:                                              ; preds = %339, %334
  br label %343

343:                                              ; preds = %342, %201
  br label %30

344:                                              ; preds = %30
  %345 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %346 = load i64*, i64** %13, align 8
  store i64 %345, i64* %346, align 8
  %347 = load i32, i32* @SZ_OK, align 4
  store i32 %347, i32* %7, align 4
  br label %348

348:                                              ; preds = %344, %328, %305, %239, %173, %152, %120, %77, %56, %46
  %349 = load i32, i32* %7, align 4
  ret i32 %349
}

declare dso_local i64 @Lzma2Dec_UpdateState(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_9__*) #1

declare dso_local i32 @LzmaDec_InitDicAndState(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @LzmaDec_UpdateWithUncompressed(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @LZMA2_GET_LZMA_MODE(%struct.TYPE_9__*) #1

declare dso_local i32 @LzmaDec_DecodeToDic(%struct.TYPE_10__*, i64, i32*, i64*, i64, i64*) #1

declare dso_local i32 @RINOK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
