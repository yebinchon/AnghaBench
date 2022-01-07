; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_16__*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i64 0, align 8
@LARGEST_INT64 = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%z%sSELECT rowid, * FROM %s%q%s%Q\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" UNION ALL \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%z WHERE rowid=%lld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%z WHERE rowid>=%lld\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%z %s rowid<=%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i8*, i32, i32**)* @unionFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionFilter(%struct.TYPE_14__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %12, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = bitcast %struct.TYPE_14__* %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %13, align 8
  %29 = load i32, i32* @SQLITE_OK, align 4
  store i32 %29, i32* %14, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %30 = load i64, i64* @SMALLEST_INT64, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* @LARGEST_INT64, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %57 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br label %60

60:                                               ; preds = %54, %50, %46, %42, %38, %34, %5
  %61 = phi i1 [ true, %50 ], [ true, %46 ], [ true, %42 ], [ true, %38 ], [ true, %34 ], [ true, %5 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32**, i32*** %11, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @sqlite3_value_int64(i32* %75)
  store i64 %76, i64* %19, align 8
  store i64 %76, i64* %18, align 8
  br label %141

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %80 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = icmp sge i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32**, i32*** %11, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @sqlite3_value_int64(i32* %91)
  store i64 %92, i64* %19, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %84
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* @SMALLEST_INT64, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  br label %105

102:                                              ; preds = %97
  %103 = load i64, i64* %19, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %19, align 8
  br label %105

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %77
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %110 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = icmp sge i32 %115, 1
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32**, i32*** %11, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %119, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @sqlite3_value_int64(i32* %124)
  store i64 %125, i64* %18, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %114
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* @LARGEST_INT64, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %17, align 4
  br label %138

135:                                              ; preds = %130
  %136 = load i64, i64* %18, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %135, %134
  br label %139

139:                                              ; preds = %138, %114
  br label %140

140:                                              ; preds = %139, %107
  br label %141

141:                                              ; preds = %140, %68
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %143 = call i32 @unionFinalizeCsrStmt(%struct.TYPE_17__* %142)
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @SQLITE_OK, align 4
  store i32 %147, i32* %6, align 4
  br label %320

148:                                              ; preds = %141
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %270, %148
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %273

155:                                              ; preds = %149
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i64 %160
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %20, align 8
  %162 = load i64, i64* %18, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %162, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %155
  %168 = load i64, i64* %19, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167, %155
  br label %270

174:                                              ; preds = %167
  %175 = load i8*, i8** %16, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = icmp ne i8* %176, null
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %174
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  br label %195

194:                                              ; preds = %174
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i8* [ %193, %190 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %194 ]
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %175, i8* %179, i8* %185, i8* %196, i8* %202, i32 %205)
  store i8* %206, i8** %16, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %210, i32* %14, align 4
  br label %273

211:                                              ; preds = %195
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %19, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i8*, i8** %16, align 8
  %217 = load i64, i64* %18, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %216, i8* %218)
  store i8* %219, i8** %16, align 8
  br label %251

220:                                              ; preds = %211
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  %221 = load i64, i64* %18, align 8
  %222 = load i64, i64* @SMALLEST_INT64, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = load i64, i64* %18, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp sgt i64 %225, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i8*, i8** %16, align 8
  %232 = load i64, i64* %18, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %231, i8* %233)
  store i8* %234, i8** %16, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  br label %235

235:                                              ; preds = %230, %224, %220
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* @LARGEST_INT64, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  %240 = load i64, i64* %19, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp slt i64 %240, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = load i8*, i8** %16, align 8
  %247 = load i8*, i8** %21, align 8
  %248 = load i64, i64* %19, align 8
  %249 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %246, i8* %247, i64 %248)
  store i8* %249, i8** %16, align 8
  br label %250

250:                                              ; preds = %245, %239, %235
  br label %251

251:                                              ; preds = %250, %215
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load i64, i64* %19, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %264 = load i32, i32* %15, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = call i32 @unionOpenDatabase(%struct.TYPE_15__* %263, i32 %264, i32* %267)
  store i32 %268, i32* %14, align 4
  br label %273

269:                                              ; preds = %251
  br label %270

270:                                              ; preds = %269, %173
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  br label %149

273:                                              ; preds = %256, %209, %149
  %274 = load i8*, i8** %16, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %6, align 4
  br label %320

278:                                              ; preds = %273
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i64 %286
  %288 = call i32* @unionGetDb(%struct.TYPE_15__* %279, %struct.TYPE_16__* %287)
  store i32* %288, i32** %22, align 8
  %289 = load i32*, i32** %22, align 8
  %290 = load i8*, i8** %16, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = call i32 @unionPrepare(i32* %14, i32* %289, i8* %290, i32* %293)
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %278
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = call i32 @unionIncrRefcount(%struct.TYPE_15__* %302, i64 %306)
  br label %308

308:                                              ; preds = %301, %278
  %309 = load i8*, i8** %16, align 8
  %310 = call i32 @sqlite3_free(i8* %309)
  br label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* @SQLITE_OK, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = load i32, i32* %14, align 4
  store i32 %316, i32* %6, align 4
  br label %320

317:                                              ; preds = %311
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %319 = call i32 @unionNext(%struct.TYPE_14__* %318)
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %317, %315, %276, %146
  %321 = load i32, i32* %6, align 4
  ret i32 %321
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @unionFinalizeCsrStmt(%struct.TYPE_17__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @unionOpenDatabase(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32* @unionGetDb(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @unionPrepare(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @unionIncrRefcount(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @unionNext(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
