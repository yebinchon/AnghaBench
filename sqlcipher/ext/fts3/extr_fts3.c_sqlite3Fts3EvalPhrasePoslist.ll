; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3EvalPhrasePoslist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3EvalPhrasePoslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i64, i8*, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i8* }
%struct.TYPE_15__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTSQUERY_OR = common dso_local global i64 0, align 8
@FTSQUERY_NEAR = common dso_local global i64 0, align 8
@FTSQUERY_PHRASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3EvalPhrasePoslist(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %10, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %11, align 8
  %35 = load i8**, i8*** %9, align 8
  store i8* null, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br label %44

44:                                               ; preds = %38, %4
  %45 = phi i1 [ false, %4 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @SQLITE_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %439

63:                                               ; preds = %55, %44
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %14, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %63
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %382

81:                                               ; preds = %76, %63
  %82 = load i32, i32* @SQLITE_OK, align 4
  store i32 %82, i32* %15, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %20, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %19, align 8
  br label %90

90:                                               ; preds = %115, %81
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %92 = icmp ne %struct.TYPE_17__* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FTSQUERY_OR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FTSQUERY_NEAR, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %20, align 8
  br label %108

108:                                              ; preds = %106, %100
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %108
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %19, align 8
  br label %90

119:                                              ; preds = %90
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %5, align 4
  br label %439

124:                                              ; preds = %119
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %175

129:                                              ; preds = %124
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %22, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %135 = call i32 @fts3EvalRestart(%struct.TYPE_18__* %133, %struct.TYPE_17__* %134, i32* %15)
  br label %136

136:                                              ; preds = %161, %129
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i1 [ false, %136 ], [ %145, %140 ]
  br i1 %147, label %148, label %162

148:                                              ; preds = %146
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %151 = call i32 @fts3EvalNextRow(%struct.TYPE_18__* %149, %struct.TYPE_17__* %150, i32* %15)
  %152 = load i32, i32* %22, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %162

161:                                              ; preds = %154, %148
  br label %136

162:                                              ; preds = %160, %146
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @SQLITE_OK, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br label %171

171:                                              ; preds = %166, %162
  %172 = phi i1 [ true, %162 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  br label %175

175:                                              ; preds = %171, %124
  %176 = load i32, i32* %18, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %191, %178
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* @SQLITE_OK, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %179
  %190 = phi i1 [ false, %179 ], [ %188, %183 ]
  br i1 %190, label %191, label %195

191:                                              ; preds = %189
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %194 = call i32 @fts3EvalNextRow(%struct.TYPE_18__* %192, %struct.TYPE_17__* %193, i32* %15)
  br label %179

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %175
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* @SQLITE_OK, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = load i32, i32* %15, align 4
  store i32 %201, i32* %5, align 4
  br label %439

202:                                              ; preds = %196
  store i32 1, i32* %21, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %203, %struct.TYPE_17__** %19, align 8
  br label %204

204:                                              ; preds = %369, %202
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %206 = icmp ne %struct.TYPE_17__* %205, null
  br i1 %206, label %207, label %373

207:                                              ; preds = %204
  store i32 0, i32* %23, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %208, %struct.TYPE_17__** %24, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @FTSQUERY_NEAR, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @FTSQUERY_PHRASE, align 8
  %219 = icmp eq i64 %217, %218
  br label %220

220:                                              ; preds = %214, %207
  %221 = phi i1 [ true, %207 ], [ %219, %214 ]
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @FTSQUERY_NEAR, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  store %struct.TYPE_17__* %232, %struct.TYPE_17__** %24, align 8
  br label %233

233:                                              ; preds = %229, %220
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @FTSQUERY_PHRASE, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  store %struct.TYPE_16__* %243, %struct.TYPE_16__** %25, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %12, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %14, align 8
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %16, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %304

255:                                              ; preds = %233
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %255
  %262 = load i8*, i8** %12, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %266, i64 %271
  %273 = icmp uge i8* %262, %272
  br label %274

274:                                              ; preds = %261, %255
  %275 = phi i1 [ true, %255 ], [ %273, %261 ]
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %23, align 4
  br label %277

277:                                              ; preds = %292, %274
  %278 = load i8*, i8** %12, align 8
  %279 = icmp eq i8* %278, null
  br i1 %279, label %287, label %280

280:                                              ; preds = %277
  %281 = load i64, i64* %14, align 8
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = call i64 @DOCID_CMP(i64 %281, i64 %284)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %280, %277
  %288 = load i32, i32* %23, align 4
  %289 = icmp eq i32 %288, 0
  br label %290

290:                                              ; preds = %287, %280
  %291 = phi i1 [ false, %280 ], [ %289, %287 ]
  br i1 %291, label %292, label %303

292:                                              ; preds = %290
  %293 = load i32, i32* %16, align 4
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @sqlite3Fts3DoclistNext(i32 %293, i8* %297, i32 %301, i8** %12, i64* %14, i32* %23)
  br label %277

303:                                              ; preds = %290
  br label %352

304:                                              ; preds = %233
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %304
  %311 = load i8*, i8** %12, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %310
  %314 = load i8*, i8** %12, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ule i8* %314, %318
  br label %320

320:                                              ; preds = %313, %310
  %321 = phi i1 [ false, %310 ], [ %319, %313 ]
  br label %322

322:                                              ; preds = %320, %304
  %323 = phi i1 [ true, %304 ], [ %321, %320 ]
  %324 = zext i1 %323 to i32
  store i32 %324, i32* %23, align 4
  br label %325

325:                                              ; preds = %340, %322
  %326 = load i8*, i8** %12, align 8
  %327 = icmp eq i8* %326, null
  br i1 %327, label %335, label %328

328:                                              ; preds = %325
  %329 = load i64, i64* %14, align 8
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @DOCID_CMP(i64 %329, i64 %332)
  %334 = icmp sgt i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %328, %325
  %336 = load i32, i32* %23, align 4
  %337 = icmp eq i32 %336, 0
  br label %338

338:                                              ; preds = %335, %328
  %339 = phi i1 [ false, %328 ], [ %337, %335 ]
  br i1 %339, label %340, label %351

340:                                              ; preds = %338
  %341 = load i32, i32* %16, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @sqlite3Fts3DoclistPrev(i32 %341, i8* %345, i32 %349, i8** %12, i64* %14, i32* %26, i32* %23)
  br label %325

351:                                              ; preds = %338
  br label %352

352:                                              ; preds = %351, %303
  %353 = load i8*, i8** %12, align 8
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 2
  store i8* %353, i8** %355, align 8
  %356 = load i64, i64* %14, align 8
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 3
  store i64 %356, i64* %358, align 8
  %359 = load i32, i32* %23, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %352
  %362 = load i64, i64* %14, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %362, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %361, %352
  store i32 0, i32* %21, align 4
  br label %368

368:                                              ; preds = %367, %361
  br label %369

369:                                              ; preds = %368
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 5
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %371, align 8
  store %struct.TYPE_17__* %372, %struct.TYPE_17__** %19, align 8
  br label %204

373:                                              ; preds = %204
  %374 = load i32, i32* %21, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 2
  %379 = load i8*, i8** %378, align 8
  store i8* %379, i8** %12, align 8
  br label %381

380:                                              ; preds = %373
  store i8* null, i8** %12, align 8
  br label %381

381:                                              ; preds = %380, %376
  br label %382

382:                                              ; preds = %381, %76
  %383 = load i8*, i8** %12, align 8
  %384 = icmp eq i8* %383, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = load i32, i32* @SQLITE_OK, align 4
  store i32 %386, i32* %5, align 4
  br label %439

387:                                              ; preds = %382
  %388 = load i8*, i8** %12, align 8
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp eq i32 %390, 1
  br i1 %391, label %392, label %400

392:                                              ; preds = %387
  %393 = load i8*, i8** %12, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %12, align 8
  %395 = load i8*, i8** %12, align 8
  %396 = call i32 @fts3GetVarint32(i8* %395, i32* %13)
  %397 = load i8*, i8** %12, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8* %399, i8** %12, align 8
  br label %401

400:                                              ; preds = %387
  store i32 0, i32* %13, align 4
  br label %401

401:                                              ; preds = %400, %392
  br label %402

402:                                              ; preds = %414, %401
  %403 = load i32, i32* %13, align 4
  %404 = load i32, i32* %8, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %422

406:                                              ; preds = %402
  %407 = call i32 @fts3ColumnlistCopy(i32 0, i8** %12)
  %408 = load i8*, i8** %12, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %406
  %413 = load i32, i32* @SQLITE_OK, align 4
  store i32 %413, i32* %5, align 4
  br label %439

414:                                              ; preds = %406
  %415 = load i8*, i8** %12, align 8
  %416 = getelementptr inbounds i8, i8* %415, i32 1
  store i8* %416, i8** %12, align 8
  %417 = load i8*, i8** %12, align 8
  %418 = call i32 @fts3GetVarint32(i8* %417, i32* %13)
  %419 = load i8*, i8** %12, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i8, i8* %419, i64 %420
  store i8* %421, i8** %12, align 8
  br label %402

422:                                              ; preds = %402
  %423 = load i8*, i8** %12, align 8
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  store i8* null, i8** %12, align 8
  br label %428

428:                                              ; preds = %427, %422
  %429 = load i32, i32* %8, align 4
  %430 = load i32, i32* %13, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %428
  %433 = load i8*, i8** %12, align 8
  br label %435

434:                                              ; preds = %428
  br label %435

435:                                              ; preds = %434, %432
  %436 = phi i8* [ %433, %432 ], [ null, %434 ]
  %437 = load i8**, i8*** %9, align 8
  store i8* %436, i8** %437, align 8
  %438 = load i32, i32* @SQLITE_OK, align 4
  store i32 %438, i32* %5, align 4
  br label %439

439:                                              ; preds = %435, %412, %385, %200, %122, %61
  %440 = load i32, i32* %5, align 4
  ret i32 %440
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3EvalRestart(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @fts3EvalNextRow(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @DOCID_CMP(i64, i64) #1

declare dso_local i32 @sqlite3Fts3DoclistNext(i32, i8*, i32, i8**, i64*, i32*) #1

declare dso_local i32 @sqlite3Fts3DoclistPrev(i32, i8*, i32, i8**, i64*, i32*, i32*) #1

declare dso_local i32 @fts3GetVarint32(i8*, i32*) #1

declare dso_local i32 @fts3ColumnlistCopy(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
