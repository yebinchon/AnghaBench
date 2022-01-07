; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbetrace.c_sqlite3VdbeExpandSql.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbetrace.c_sqlite3VdbeExpandSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32, i32*, i32, %struct.TYPE_18__, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_21__ = type { i64, i64 }

@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@MEM_Null = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@MEM_Int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@MEM_Real = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%!.15g\00", align 1
@MEM_Str = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i64 0, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"'%.*q'\00", align 1
@MEM_Zero = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"zeroblob(%d)\00", align 1
@MEM_Blob = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@SQLITE_TRACE_SIZE_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3VdbeExpandSql(%struct.TYPE_20__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca [100 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sqlite3StrAccumInit(%struct.TYPE_21__* %12, i32 0, i8* %22, i32 100, i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %74

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %15, align 8
  br label %41

41:                                               ; preds = %54, %39
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ false, %41 ], [ %51, %47 ]
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %41

55:                                               ; preds = %52
  %56 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* %65, i32 %71)
  br label %35

73:                                               ; preds = %35
  br label %364

74:                                               ; preds = %2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @sqlite3Strlen30(i8* %81)
  %83 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* %80, i32 %82)
  br label %363

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %361, %84
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %362

90:                                               ; preds = %85
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @findNextHostParameter(i8* %91, i32* %9)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %4, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %90
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 0
  br label %112

112:                                              ; preds = %109, %90
  %113 = phi i1 [ true, %90 ], [ %111, %109 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %362

119:                                              ; preds = %112
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 63
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @sqlite3Isdigit(i8 signext %131)
  %133 = call i32 @assert(i32 %132)
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = call i32 @sqlite3GetInt32(i8* %135, i32* %6)
  br label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %128
  br label %204

140:                                              ; preds = %119
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 58
  br i1 %145, label %164, label %146

146:                                              ; preds = %140
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 36
  br i1 %151, label %164, label %152

152:                                              ; preds = %146
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 64
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 35
  br label %164

164:                                              ; preds = %158, %152, %146, %140
  %165 = phi i1 [ true, %152 ], [ true, %146 ], [ true, %140 ], [ %163, %158 ]
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 58
  %173 = zext i1 %172 to i32
  %174 = call i32 @testcase(i32 %173)
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 36
  %180 = zext i1 %179 to i32
  %181 = call i32 @testcase(i32 %180)
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 64
  %187 = zext i1 %186 to i32
  %188 = call i32 @testcase(i32 %187)
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 35
  %194 = zext i1 %193 to i32
  %195 = call i32 @testcase(i32 %194)
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %197 = load i8*, i8** %4, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @sqlite3VdbeParameterIndex(%struct.TYPE_20__* %196, i8* %197, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp sgt i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  br label %204

204:                                              ; preds = %164, %139
  %205 = load i32, i32* %9, align 4
  %206 = load i8*, i8** %4, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sle i32 %214, %217
  br label %219

219:                                              ; preds = %213, %204
  %220 = phi i1 [ false, %204 ], [ %218, %213 ]
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i64 %228
  store %struct.TYPE_22__* %229, %struct.TYPE_22__** %11, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @MEM_Null, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %219
  %237 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %361

238:                                              ; preds = %219
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @MEM_Int, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3_str_appendf(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  br label %360

251:                                              ; preds = %238
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @MEM_Real, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3_str_appendf(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %262)
  br label %359

264:                                              ; preds = %251
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @MEM_Str, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %314

271:                                              ; preds = %264
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %273 = call i64 @ENC(%struct.TYPE_19__* %272)
  store i64 %273, i64* %17, align 8
  %274 = load i64, i64* %17, align 8
  %275 = load i64, i64* @SQLITE_UTF8, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %299

277:                                              ; preds = %271
  %278 = call i32 @memset(%struct.TYPE_22__* %13, i32 0, i32 40)
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  store %struct.TYPE_19__* %279, %struct.TYPE_19__** %280, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i64, i64* %17, align 8
  %288 = load i32, i32* @SQLITE_STATIC, align 4
  %289 = call i32 @sqlite3VdbeMemSetStr(%struct.TYPE_22__* %13, i32* %283, i32 %286, i64 %287, i32 %288)
  %290 = load i64, i64* @SQLITE_NOMEM, align 8
  %291 = load i64, i64* @SQLITE_UTF8, align 8
  %292 = call i64 @sqlite3VdbeChangeEncoding(%struct.TYPE_22__* %13, i64 %291)
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %277
  %295 = load i64, i64* @SQLITE_NOMEM, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i64 %295, i64* %296, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i64 0, i64* %297, align 8
  br label %298

298:                                              ; preds = %294, %277
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %11, align 8
  br label %299

299:                                              ; preds = %298, %271
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  store i32 %302, i32* %16, align 4
  %303 = load i32, i32* %16, align 4
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3_str_appendf(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %303, i32* %306)
  %308 = load i64, i64* %17, align 8
  %309 = load i64, i64* @SQLITE_UTF8, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %299
  %312 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_22__* %13)
  br label %313

313:                                              ; preds = %311, %299
  br label %358

314:                                              ; preds = %264
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @MEM_Zero, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %314
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3_str_appendf(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  br label %357

327:                                              ; preds = %314
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @MEM_Blob, align 4
  %332 = and i32 %330, %331
  %333 = call i32 @assert(i32 %332)
  %334 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  store i32 %337, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %338

338:                                              ; preds = %352, %327
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %18, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %355

342:                                              ; preds = %338
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %349, 255
  %351 = call i32 (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3_str_appendf(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %342
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %338

355:                                              ; preds = %338
  %356 = call i32 @sqlite3_str_append(%struct.TYPE_21__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %357

357:                                              ; preds = %355, %321
  br label %358

358:                                              ; preds = %357, %313
  br label %359

359:                                              ; preds = %358, %258
  br label %360

360:                                              ; preds = %359, %245
  br label %361

361:                                              ; preds = %360, %236
  br label %85

362:                                              ; preds = %118, %85
  br label %363

363:                                              ; preds = %362, %79
  br label %364

364:                                              ; preds = %363, %73
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = call i32 @sqlite3_str_reset(%struct.TYPE_21__* %12)
  br label %370

370:                                              ; preds = %368, %364
  %371 = call i8* @sqlite3StrAccumFinish(%struct.TYPE_21__* %12)
  ret i8* %371
}

declare dso_local i32 @sqlite3StrAccumInit(%struct.TYPE_21__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_str_append(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @findNextHostParameter(i8*, i32*) #1

declare dso_local i32 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @sqlite3GetInt32(i8*, i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeParameterIndex(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @sqlite3_str_appendf(%struct.TYPE_21__*, i8*, i32, ...) #1

declare dso_local i64 @ENC(%struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetStr(%struct.TYPE_22__*, i32*, i32, i64, i32) #1

declare dso_local i64 @sqlite3VdbeChangeEncoding(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3_str_reset(%struct.TYPE_21__*) #1

declare dso_local i8* @sqlite3StrAccumFinish(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
