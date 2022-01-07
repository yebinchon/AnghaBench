; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_isLikeOrGlob.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_isLikeOrGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_32__* }

@TK_VARIABLE = common dso_local global i32 0, align 4
@SQLITE_EnableQPSG = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@SQLITE_AFF_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_32__**, i32*, i32*)* @isLikeOrGlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLikeOrGlob(%struct.TYPE_30__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i64], align 16
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__** %2, %struct.TYPE_32__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* null, i64** %12, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  store %struct.TYPE_29__* %33, %struct.TYPE_29__** %19, align 8
  store i32* null, i32** %20, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %38 = bitcast i64* %37 to i8*
  %39 = call i32 @sqlite3IsLikeFunction(%struct.TYPE_29__* %34, %struct.TYPE_32__* %35, i32* %36, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %363

42:                                               ; preds = %5
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %45, align 8
  store %struct.TYPE_31__* %46, %struct.TYPE_31__** %15, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %51, align 8
  store %struct.TYPE_32__* %52, %struct.TYPE_32__** %14, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %57, align 8
  %59 = call %struct.TYPE_32__* @sqlite3ExprSkipCollate(%struct.TYPE_32__* %58)
  store %struct.TYPE_32__* %59, %struct.TYPE_32__** %13, align 8
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* @TK_VARIABLE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %42
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SQLITE_EnableQPSG, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %66
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %23, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %24, align 4
  %80 = load i32*, i32** %23, align 8
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %83 = call i32* @sqlite3VdbeGetBoundValue(i32* %80, i32 %81, i32 %82)
  store i32* %83, i32** %20, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %73
  %87 = load i32*, i32** %20, align 8
  %88 = call i64 @sqlite3_value_type(i32* %87)
  %89 = load i64, i64* @SQLITE_TEXT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %20, align 8
  %93 = call i64* @sqlite3_value_text(i32* %92)
  store i64* %93, i64** %12, align 8
  br label %94

94:                                               ; preds = %91, %86, %73
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %24, align 4
  %99 = call i32 @sqlite3VdbeSetVarmask(i32* %97, i32 %98)
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TK_VARIABLE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %94
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TK_REGISTER, align 4
  %110 = icmp eq i32 %108, %109
  br label %111

111:                                              ; preds = %105, %94
  %112 = phi i1 [ true, %94 ], [ %110, %105 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %126

115:                                              ; preds = %66, %42
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* @TK_STRING, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = bitcast i8* %123 to i64*
  store i64* %124, i64** %12, align 8
  br label %125

125:                                              ; preds = %119, %115
  br label %126

126:                                              ; preds = %125, %111
  %127 = load i64*, i64** %12, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %356

129:                                              ; preds = %126
  store i32 0, i32* %17, align 4
  br label %130

130:                                              ; preds = %171, %129
  %131 = load i64*, i64** %12, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %16, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %130
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %140 = load i64, i64* %139, align 16
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load i64, i64* %16, align 8
  %144 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i64, i64* %16, align 8
  %149 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 2
  %150 = load i64, i64* %149, align 16
  %151 = icmp ne i64 %148, %150
  br label %152

152:                                              ; preds = %147, %142, %137, %130
  %153 = phi i1 [ false, %142 ], [ false, %137 ], [ false, %130 ], [ %151, %147 ]
  br i1 %153, label %154, label %172

154:                                              ; preds = %152
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i64*, i64** %12, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %168, %161, %154
  br label %130

172:                                              ; preds = %152
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %354

175:                                              ; preds = %172
  %176 = load i64*, i64** %12, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 255, %181
  br i1 %182, label %183, label %354

183:                                              ; preds = %175
  %184 = load i32, i32* %17, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %193, label %186

186:                                              ; preds = %183
  %187 = load i64*, i64** %12, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %189, %191
  br i1 %192, label %193, label %354

193:                                              ; preds = %186, %183
  %194 = load i64, i64* %16, align 8
  %195 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %196 = load i64, i64* %195, align 16
  %197 = icmp eq i64 %194, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load i64*, i64** %12, align 8
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br label %206

206:                                              ; preds = %198, %193
  %207 = phi i1 [ false, %193 ], [ %205, %198 ]
  %208 = zext i1 %207 to i32
  %209 = load i32*, i32** %10, align 8
  store i32 %208, i32* %209, align 4
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %211 = load i32, i32* @TK_STRING, align 4
  %212 = load i64*, i64** %12, align 8
  %213 = bitcast i64* %212 to i8*
  %214 = call %struct.TYPE_32__* @sqlite3Expr(%struct.TYPE_29__* %210, i32 %211, i8* %213)
  store %struct.TYPE_32__* %214, %struct.TYPE_32__** %25, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %216 = icmp ne %struct.TYPE_32__* %215, null
  br i1 %216, label %217, label %310

217:                                              ; preds = %206
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %28, align 8
  %222 = load i8*, i8** %28, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  store i8 0, i8* %225, align 1
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %226

226:                                              ; preds = %254, %217
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %17, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %257

230:                                              ; preds = %226
  %231 = load i8*, i8** %28, align 8
  %232 = load i32, i32* %26, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i64
  %237 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %236, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %230
  %241 = load i32, i32* %26, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %26, align 4
  br label %243

243:                                              ; preds = %240, %230
  %244 = load i8*, i8** %28, align 8
  %245 = load i32, i32* %26, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = load i8*, i8** %28, align 8
  %250 = load i32, i32* %27, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %27, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %249, i64 %252
  store i8 %248, i8* %253, align 1
  br label %254

254:                                              ; preds = %243
  %255 = load i32, i32* %26, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %26, align 4
  br label %226

257:                                              ; preds = %226
  %258 = load i8*, i8** %28, align 8
  %259 = load i32, i32* %27, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  store i8 0, i8* %261, align 1
  %262 = load i8*, i8** %28, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = call i64 @sqlite3Isdigit(i8 signext %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %283, label %267

267:                                              ; preds = %257
  %268 = load i8*, i8** %28, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 45
  br i1 %272, label %283, label %273

273:                                              ; preds = %267
  %274 = load i8*, i8** %28, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %277, 1
  %279 = icmp eq i32 %278, 48
  br i1 %279, label %280, label %309

280:                                              ; preds = %273
  %281 = load i32, i32* %27, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %309

283:                                              ; preds = %280, %267, %257
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* @TK_COLUMN, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %302, label %290

290:                                              ; preds = %283
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %292 = call i64 @sqlite3ExprAffinity(%struct.TYPE_32__* %291)
  %293 = load i64, i64* @SQLITE_AFF_TEXT, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %302, label %295

295:                                              ; preds = %290
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @IsVirtual(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %295, %290, %283
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %305 = call i32 @sqlite3ExprDelete(%struct.TYPE_29__* %303, %struct.TYPE_32__* %304)
  %306 = load i32*, i32** %20, align 8
  %307 = call i32 @sqlite3ValueFree(i32* %306)
  store i32 0, i32* %6, align 4
  br label %363

308:                                              ; preds = %295
  br label %309

309:                                              ; preds = %308, %280, %273
  br label %310

310:                                              ; preds = %309, %206
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %312 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %9, align 8
  store %struct.TYPE_32__* %311, %struct.TYPE_32__** %312, align 8
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* @TK_VARIABLE, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %353

316:                                              ; preds = %310
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  store i32* %319, i32** %29, align 8
  %320 = load i32*, i32** %29, align 8
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @sqlite3VdbeSetVarmask(i32* %320, i32 %323)
  %325 = load i32*, i32** %10, align 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %352

328:                                              ; preds = %316
  %329 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %328
  %338 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %339 = call i32 @sqlite3GetTempReg(%struct.TYPE_30__* %338)
  store i32 %339, i32* %30, align 4
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %341 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %342 = load i32, i32* %30, align 4
  %343 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_30__* %340, %struct.TYPE_32__* %341, i32 %342)
  %344 = load i32*, i32** %29, align 8
  %345 = load i32*, i32** %29, align 8
  %346 = call i64 @sqlite3VdbeCurrentAddr(i32* %345)
  %347 = sub nsw i64 %346, 1
  %348 = call i32 @sqlite3VdbeChangeP3(i32* %344, i64 %347, i32 0)
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %350 = load i32, i32* %30, align 4
  %351 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_30__* %349, i32 %350)
  br label %352

352:                                              ; preds = %337, %328, %316
  br label %353

353:                                              ; preds = %352, %310
  br label %355

354:                                              ; preds = %186, %175, %172
  store i64* null, i64** %12, align 8
  br label %355

355:                                              ; preds = %354, %353
  br label %356

356:                                              ; preds = %355, %126
  %357 = load i64*, i64** %12, align 8
  %358 = icmp ne i64* %357, null
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %22, align 4
  %360 = load i32*, i32** %20, align 8
  %361 = call i32 @sqlite3ValueFree(i32* %360)
  %362 = load i32, i32* %22, align 4
  store i32 %362, i32* %6, align 4
  br label %363

363:                                              ; preds = %356, %302, %41
  %364 = load i32, i32* %6, align 4
  ret i32 %364
}

declare dso_local i32 @sqlite3IsLikeFunction(%struct.TYPE_29__*, %struct.TYPE_32__*, i32*, i8*) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprSkipCollate(%struct.TYPE_32__*) #1

declare dso_local i32* @sqlite3VdbeGetBoundValue(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3VdbeSetVarmask(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_32__* @sqlite3Expr(%struct.TYPE_29__*, i32, i8*) #1

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i64 @sqlite3ExprAffinity(%struct.TYPE_32__*) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_30__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
