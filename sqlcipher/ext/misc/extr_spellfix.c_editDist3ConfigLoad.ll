; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3ConfigLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editDist3ConfigLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i64, i64, i8*, i8* }

@.str = private unnamed_addr constant [72 x i8] c"SELECT iLang, cFrom, cTo, iCost FROM \22%w\22 WHERE iLang>=0 ORDER BY iLang\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i8*)* @editDist3ConfigLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editDist3ConfigLoad(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -9999, i32* %12, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %29, i32* %4, align 4
  br label %313

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @sqlite3_prepare(i32* %31, i8* %32, i32 -1, i32** %8, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @sqlite3_free(i8* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %313

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i32 @editDist3ConfigClear(%struct.TYPE_13__* %41)
  br label %43

43:                                               ; preds = %270, %106, %102, %98, %40
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @sqlite3_step(i32* %44)
  %46 = load i64, i64* @SQLITE_ROW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %271

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @sqlite3_column_int(i32* %49, i32 0)
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @sqlite3_column_text(i32* %51, i32 1)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @sqlite3_column_bytes(i32* %57, i32 1)
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  store i32 %61, i32* %16, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @sqlite3_column_text(i32* %62, i32 2)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @sqlite3_column_bytes(i32* %68, i32 2)
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  store i32 %72, i32* %18, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @sqlite3_column_int(i32* %73, i32 3)
  store i32 %74, i32* %19, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 0
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi i1 [ true, %71 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i8*, i8** %17, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i1 [ true, %80 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = icmp sgt i32 %93, 100
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %18, align 4
  %97 = icmp sgt i32 %96, 100
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %89
  br label %43

99:                                               ; preds = %95
  %100 = load i32, i32* %19, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %43

103:                                              ; preds = %99
  %104 = load i32, i32* %19, align 4
  %105 = icmp sge i32 %104, 10000
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %43

107:                                              ; preds = %103
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = icmp eq %struct.TYPE_11__* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %110, %107
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 24
  %124 = trunc i64 %123 to i32
  %125 = call %struct.TYPE_11__* @sqlite3_realloc64(%struct.TYPE_11__* %117, i32 %124)
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %20, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %127 = icmp eq %struct.TYPE_11__* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %129, i32* %9, align 4
  br label %271

130:                                              ; preds = %114
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %140
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %13, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i32 100, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  store i32 100, i32* %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  store i32 150, i32* %154, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %156, align 8
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %130, %110
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i8*, i8** %15, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 63
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i32, i32* %18, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %270

174:                                              ; preds = %167, %161, %158
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load i32, i32* %18, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i8*, i8** %17, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 63
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* %19, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  br label %269

190:                                              ; preds = %180, %177, %174
  %191 = load i32, i32* %16, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  %194 = load i32, i32* %18, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %212

196:                                              ; preds = %193
  %197 = load i8*, i8** %15, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 63
  br i1 %201, label %202, label %212

202:                                              ; preds = %196
  %203 = load i8*, i8** %17, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 63
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* %19, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  br label %268

212:                                              ; preds = %202, %196, %193, %190
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %213, %214
  %216 = sub nsw i32 %215, 4
  store i32 %216, i32* %22, align 4
  %217 = load i32, i32* %22, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i32 0, i32* %22, align 4
  br label %220

220:                                              ; preds = %219, %212
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = add i64 40, %222
  %224 = trunc i64 %223 to i32
  %225 = call %struct.TYPE_12__* @sqlite3_malloc64(i32 %224)
  store %struct.TYPE_12__* %225, %struct.TYPE_12__** %21, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %227 = icmp eq %struct.TYPE_12__* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %229, i32* %9, align 4
  br label %271

230:                                              ; preds = %220
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i64 %242, i64* %244, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i8*, i8** %15, align 8
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @memcpy(i64 %247, i8* %248, i32 %249)
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %253, %255
  %257 = load i8*, i8** %17, align 8
  %258 = load i32, i32* %18, align 4
  %259 = call i32 @memcpy(i64 %256, i8* %257, i32 %258)
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store %struct.TYPE_12__* %262, %struct.TYPE_12__** %264, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 4
  store %struct.TYPE_12__* %265, %struct.TYPE_12__** %267, align 8
  br label %268

268:                                              ; preds = %230, %208
  br label %269

269:                                              ; preds = %268, %186
  br label %270

270:                                              ; preds = %269, %170
  br label %43

271:                                              ; preds = %228, %128, %43
  %272 = load i32*, i32** %8, align 8
  %273 = call i32 @sqlite3_finalize(i32* %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @SQLITE_OK, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %271
  %278 = load i32, i32* %10, align 4
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %277, %271
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* @SQLITE_OK, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %311

283:                                              ; preds = %279
  store i32 0, i32* %23, align 4
  br label %284

284:                                              ; preds = %307, %283
  %285 = load i32, i32* %23, align 4
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %310

290:                                              ; preds = %284
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = load i32, i32* %23, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = call %struct.TYPE_12__* @editDist3CostSort(%struct.TYPE_12__* %298)
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load i32, i32* %23, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 4
  store %struct.TYPE_12__* %299, %struct.TYPE_12__** %306, align 8
  br label %307

307:                                              ; preds = %290
  %308 = load i32, i32* %23, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %23, align 4
  br label %284

310:                                              ; preds = %284
  br label %311

311:                                              ; preds = %310, %279
  %312 = load i32, i32* %9, align 4
  store i32 %312, i32* %4, align 4
  br label %313

313:                                              ; preds = %311, %38, %28
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @editDist3ConfigClear(%struct.TYPE_13__*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3_realloc64(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_12__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local %struct.TYPE_12__* @editDist3CostSort(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
