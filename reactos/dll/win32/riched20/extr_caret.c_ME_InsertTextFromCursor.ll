; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InsertTextFromCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InsertTextFromCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@MERF_TAB = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@diRun = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_InsertTextFromCursor(%struct.TYPE_22__* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = call i64 @ME_IsSelection(%struct.TYPE_22__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = call i32 @ME_DeleteSelection(%struct.TYPE_22__* %28)
  br label %30

30:                                               ; preds = %27, %5
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = call i32 @ME_GetTextLength(%struct.TYPE_22__* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br label %46

46:                                               ; preds = %40, %30
  %47 = phi i1 [ false, %30 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @lstrlenW(i8* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %55
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %330, %69
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %341

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %75
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 13
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 9
  br label %99

99:                                               ; preds = %94, %89, %84, %75
  %100 = phi i1 [ false, %89 ], [ false, %84 ], [ false, %75 ], [ %98, %94 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %11, align 8
  br label %75

104:                                              ; preds = %99
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @ME_InternalInsertTextFromCursor(%struct.TYPE_22__* %109, i32 %110, i8* %111, i32 %117, i32* %118, i32 0)
  br label %330

120:                                              ; preds = %104
  %121 = load i8*, i8** %11, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  store i8 9, i8* %14, align 1
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @MERF_TAB, align 4
  %130 = call i32 @ME_InternalInsertTextFromCursor(%struct.TYPE_22__* %126, i32 %127, i8* %14, i32 1, i32* %128, i32 %129)
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %11, align 8
  br label %329

133:                                              ; preds = %120
  store i32 0, i32* %19, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ES_MULTILINE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  br label %341

141:                                              ; preds = %133
  %142 = load i8*, i8** %11, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %146, label %175

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 2, i32* %19, align 4
  br label %174

156:                                              ; preds = %149, %146
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %157, 2
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 13
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load i8*, i8** %11, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  store i32 3, i32* %19, align 4
  br label %173

172:                                              ; preds = %165, %159, %156
  store i32 1, i32* %19, align 4
  br label %173

173:                                              ; preds = %172, %171
  br label %174

174:                                              ; preds = %173, %155
  br label %182

175:                                              ; preds = %141
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 10
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  store i32 1, i32* %19, align 4
  br label %182

182:                                              ; preds = %175, %174
  %183 = load i32, i32* %19, align 4
  %184 = load i8*, i8** %11, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %11, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %182
  %192 = load i32, i32* %19, align 4
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  store i8 32, i8* %20, align 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @ME_InternalInsertTextFromCursor(%struct.TYPE_22__* %195, i32 %196, i8* %20, i32 1, i32* %197, i32 0)
  br label %328

199:                                              ; preds = %191, %182
  store i8 13, i8* %21, align 1
  %200 = load i8*, i8** %8, align 8
  store i8* %200, i8** %22, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %199
  store i8* %21, i8** %22, align 8
  store i32 1, i32* %19, align 4
  br label %206

206:                                              ; preds = %205, %199
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i64 %211
  store %struct.TYPE_24__* %212, %struct.TYPE_24__** %12, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %215, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %206
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %226, align 8
  %228 = load i32, i32* @diRun, align 4
  %229 = call %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__* %227, i32 %228)
  store %struct.TYPE_23__* %229, %struct.TYPE_23__** %17, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %231 = icmp ne %struct.TYPE_23__* %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %224
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %234, align 8
  store %struct.TYPE_23__* %235, %struct.TYPE_23__** %17, align 8
  br label %236

236:                                              ; preds = %232, %224
  br label %250

237:                                              ; preds = %206
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %245 = call i32 @ME_SplitRunSimple(%struct.TYPE_22__* %243, %struct.TYPE_24__* %244)
  br label %246

246:                                              ; preds = %242, %237
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %248, align 8
  store %struct.TYPE_23__* %249, %struct.TYPE_23__** %17, align 8
  br label %250

250:                                              ; preds = %246, %236
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = load i8*, i8** %22, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call %struct.TYPE_23__* @ME_SplitParagraph(%struct.TYPE_22__* %251, %struct.TYPE_23__* %252, i32* %253, i8* %254, i32 %255, i32 0)
  store %struct.TYPE_23__* %256, %struct.TYPE_23__** %15, align 8
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %258 = load i32, i32* @diRun, align 4
  %259 = call %struct.TYPE_23__* @ME_FindItemBack(%struct.TYPE_23__* %257, i32 %258)
  store %struct.TYPE_23__* %259, %struct.TYPE_23__** %16, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %261 = load i32, i32* @diRun, align 4
  %262 = call %struct.TYPE_23__* @ME_FindItemBack(%struct.TYPE_23__* %260, i32 %261)
  store %struct.TYPE_23__* %262, %struct.TYPE_23__** %18, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %264 = icmp ne %struct.TYPE_23__* %263, null
  br i1 %264, label %265, label %327

265:                                              ; preds = %250
  store i32 0, i32* %23, align 4
  br label %266

266:                                              ; preds = %323, %265
  %267 = load i32, i32* %23, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %326

272:                                              ; preds = %266
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %274, align 8
  %276 = load i32, i32* %23, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %279, align 8
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %282 = icmp eq %struct.TYPE_23__* %280, %281
  br i1 %282, label %283, label %322

283:                                              ; preds = %272
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = load i32, i32* %23, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %291, %296
  br i1 %297, label %298, label %322

298:                                              ; preds = %283
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %301, align 8
  %303 = load i32, i32* %23, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 2
  store %struct.TYPE_23__* %299, %struct.TYPE_23__** %306, align 8
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %309, align 8
  %311 = load i32, i32* %23, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 1
  store %struct.TYPE_23__* %307, %struct.TYPE_23__** %314, align 8
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 4
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %316, align 8
  %318 = load i32, i32* %23, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 0
  store i64 0, i64* %321, align 8
  br label %322

322:                                              ; preds = %298, %283, %272
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %23, align 4
  br label %266

326:                                              ; preds = %266
  br label %327

327:                                              ; preds = %326, %250
  br label %328

328:                                              ; preds = %327, %194
  br label %329

329:                                              ; preds = %328, %125
  br label %330

330:                                              ; preds = %329, %108
  %331 = load i8*, i8** %11, align 8
  %332 = load i8*, i8** %8, align 8
  %333 = ptrtoint i8* %331 to i64
  %334 = ptrtoint i8* %332 to i64
  %335 = sub i64 %333, %334
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = sub nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %9, align 4
  %340 = load i8*, i8** %11, align 8
  store i8* %340, i8** %8, align 8
  br label %71

341:                                              ; preds = %140, %71
  ret void
}

declare dso_local i64 @ME_IsSelection(%struct.TYPE_22__*) #1

declare dso_local i32 @ME_DeleteSelection(%struct.TYPE_22__*) #1

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @ME_InternalInsertTextFromCursor(%struct.TYPE_22__*, i32, i8*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ME_SplitRunSimple(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @ME_SplitParagraph(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ME_FindItemBack(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
