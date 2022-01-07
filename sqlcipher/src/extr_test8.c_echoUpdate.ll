; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xUpdate\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" SET\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"UPDATE %Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c" SET rowid=?1 \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s %Q=?%d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" WHERE rowid=?%d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"DELETE FROM %Q WHERE rowid = ?1\00", align 1
@SQLITE_NULL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"INSERT INTO %Q (\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%Q\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s?%d\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c") VALUES(\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"echo-vtab-error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @echoUpdate(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = bitcast %struct.TYPE_5__* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 2
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br label %37

37:                                               ; preds = %34, %4
  %38 = phi i1 [ true, %4 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = call i64 @simulateVtabError(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %49, i32* %5, align 4
  br label %330

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %121

53:                                               ; preds = %50
  %54 = load i32**, i32*** %8, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @sqlite3_value_type(i32* %56)
  %58 = load i64, i64* @SQLITE_INTEGER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %121

60:                                               ; preds = %53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32**, i32*** %8, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32**, i32*** %8, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @sqlite3_value_type(i32* %77)
  %79 = load i64, i64* @SQLITE_INTEGER, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %74, %69
  %82 = phi i1 [ false, %69 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %16, align 4
  store i32 1, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @string_concat(i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %12)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %88

88:                                               ; preds = %86, %81
  store i32 2, i32* %17, align 4
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = load i32**, i32*** %8, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %114

101:                                              ; preds = %93
  %102 = load i8*, i8** %18, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 %110, i32 %111)
  %113 = call i32 @string_concat(i8** %14, i8* %112, i32 1, i32* %12)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %114

114:                                              ; preds = %101, %100
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %89

117:                                              ; preds = %89
  %118 = load i32, i32* %7, align 4
  %119 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = call i32 @string_concat(i8** %14, i8* %119, i32 1, i32* %12)
  br label %220

121:                                              ; preds = %53, %50
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %141

124:                                              ; preds = %121
  %125 = load i32**, i32*** %8, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @sqlite3_value_type(i32* %127)
  %129 = load i64, i64* @SQLITE_INTEGER, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  store i8* %135, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %138, %131
  store i32 1, i32* %15, align 4
  br label %219

141:                                              ; preds = %124, %121
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %142, 2
  br i1 %143, label %144, label %215

144:                                              ; preds = %141
  %145 = load i32**, i32*** %8, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @sqlite3_value_type(i32* %147)
  %149 = load i64, i64* @SQLITE_NULL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %215

151:                                              ; preds = %144
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  store i8* %155, i8** %20, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %158, %151
  %161 = load i32**, i32*** %8, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @sqlite3_value_type(i32* %163)
  %165 = load i64, i64* @SQLITE_INTEGER, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  store i32 1, i32* %16, align 4
  %168 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %168, i8** %21, align 8
  %169 = call i32 @string_concat(i8** %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 0, i32* %12)
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 2
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  store i32 2, i32* %19, align 4
  br label %179

179:                                              ; preds = %205, %170
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %208

183:                                              ; preds = %179
  %184 = load i8*, i8** %21, align 8
  %185 = icmp ne i8* %184, null
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %19, align 4
  %192 = sub nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %187, i32 %195)
  %197 = call i32 @string_concat(i8** %20, i8* %196, i32 1, i32* %12)
  %198 = load i8*, i8** %21, align 8
  %199 = icmp ne i8* %198, null
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %202 = load i32, i32* %19, align 4
  %203 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %201, i32 %202)
  %204 = call i32 @string_concat(i8** %21, i8* %203, i32 1, i32* %12)
  br label %205

205:                                              ; preds = %183
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %179

208:                                              ; preds = %179
  %209 = load i8*, i8** %20, align 8
  %210 = call i32 @string_concat(i8** %14, i8* %209, i32 1, i32* %12)
  %211 = call i32 @string_concat(i8** %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 0, i32* %12)
  %212 = load i8*, i8** %21, align 8
  %213 = call i32 @string_concat(i8** %14, i8* %212, i32 1, i32* %12)
  %214 = call i32 @string_concat(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 0, i32* %12)
  br label %218

215:                                              ; preds = %144, %141
  %216 = call i32 @assert(i32 0)
  %217 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %217, i32* %5, align 4
  br label %330

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %140
  br label %220

220:                                              ; preds = %219, %117
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @SQLITE_OK, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i32*, i32** %11, align 8
  %226 = load i8*, i8** %14, align 8
  %227 = call i32 @sqlite3_prepare(i32* %225, i8* %226, i32 -1, i32** %13, i32 0)
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %224, %220
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @SQLITE_OK, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load i32*, i32** %13, align 8
  %234 = icmp ne i32* %233, null
  br label %235

235:                                              ; preds = %232, %228
  %236 = phi i1 [ true, %228 ], [ %234, %232 ]
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load i8*, i8** %14, align 8
  %240 = call i32 @sqlite3_free(i8* %239)
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @SQLITE_OK, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %307

244:                                              ; preds = %235
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load i32*, i32** %13, align 8
  %249 = load i32, i32* %7, align 4
  %250 = load i32**, i32*** %8, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 0
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @sqlite3_bind_value(i32* %248, i32 %249, i32* %252)
  br label %254

254:                                              ; preds = %247, %244
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load i32*, i32** %13, align 8
  %259 = load i32**, i32*** %8, align 8
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @sqlite3_bind_value(i32* %258, i32 1, i32* %261)
  br label %263

263:                                              ; preds = %257, %254
  store i32 2, i32* %17, align 4
  br label %264

264:                                              ; preds = %291, %263
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @SQLITE_OK, align 4
  %271 = icmp eq i32 %269, %270
  br label %272

272:                                              ; preds = %268, %264
  %273 = phi i1 [ false, %264 ], [ %271, %268 ]
  br i1 %273, label %274, label %294

274:                                              ; preds = %272
  %275 = load i32**, i32*** %8, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32*, i32** %13, align 8
  %283 = load i32, i32* %17, align 4
  %284 = load i32**, i32*** %8, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %284, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @sqlite3_bind_value(i32* %282, i32 %283, i32* %288)
  store i32 %289, i32* %12, align 4
  br label %290

290:                                              ; preds = %281, %274
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %17, align 4
  br label %264

294:                                              ; preds = %272
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @SQLITE_OK, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %294
  %299 = load i32*, i32** %13, align 8
  %300 = call i32 @sqlite3_step(i32* %299)
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @sqlite3_finalize(i32* %301)
  store i32 %302, i32* %12, align 4
  br label %306

303:                                              ; preds = %294
  %304 = load i32*, i32** %13, align 8
  %305 = call i32 @sqlite3_finalize(i32* %304)
  br label %306

306:                                              ; preds = %303, %298
  br label %307

307:                                              ; preds = %306, %235
  %308 = load i32*, i32** %9, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %307
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* @SQLITE_OK, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i32*, i32** %11, align 8
  %316 = call i32 @sqlite3_last_insert_rowid(i32* %315)
  %317 = load i32*, i32** %9, align 8
  store i32 %316, i32* %317, align 4
  br label %318

318:                                              ; preds = %314, %310, %307
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* @SQLITE_OK, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32*, i32** %11, align 8
  %324 = call i32 @sqlite3_errmsg(i32* %323)
  %325 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %324)
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  store i8* %325, i8** %327, align 8
  br label %328

328:                                              ; preds = %322, %318
  %329 = load i32, i32* %12, align 4
  store i32 %329, i32* %5, align 4
  br label %330

330:                                              ; preds = %328, %215, %48
  %331 = load i32, i32* %5, align 4
  ret i32 %331
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @simulateVtabError(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @string_concat(i8**, i8*, i32, i32*) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_last_insert_rowid(i32*) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
