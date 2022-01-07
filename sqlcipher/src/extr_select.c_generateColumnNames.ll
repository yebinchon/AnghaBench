; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateColumnNames.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateColumnNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_25__*, i32*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i8*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"generating column names\0A\00", align 1
@SQLITE_FullColNames = common dso_local global i32 0, align 4
@SQLITE_ShortColNames = common dso_local global i32 0, align 4
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@COLNAME_NAME = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"column%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @generateColumnNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateColumnNames(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %274

30:                                               ; preds = %2
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %274

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %42, %36
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = icmp ne %struct.TYPE_23__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %44, align 8
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %4, align 8
  br label %37

46:                                               ; preds = %37
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = call i32 @SELECTTRACE(i32 1, %struct.TYPE_24__* %47, %struct.TYPE_23__* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %8, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %9, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SQLITE_FullColNames, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SQLITE_ShortColNames, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %46
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %79, %46
  %83 = phi i1 [ true, %46 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sqlite3VdbeSetNumCols(i32* %85, i32 %88)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %266, %82
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %269

96:                                               ; preds = %90
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %103, align 8
  store %struct.TYPE_26__* %104, %struct.TYPE_26__** %13, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %106 = icmp ne %struct.TYPE_26__* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TK_AGG_COLUMN, align 8
  %113 = icmp ne i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TK_COLUMN, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %96
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = icmp ne %struct.TYPE_22__* %125, null
  br label %127

127:                                              ; preds = %121, %96
  %128 = phi i1 [ true, %96 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %127
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %14, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @COLNAME_NAME, align 4
  %152 = load i8*, i8** %14, align 8
  %153 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %154 = call i32 @sqlite3VdbeSetColName(i32* %149, i32 %150, i32 %151, i8* %152, i32 %153)
  br label %265

155:                                              ; preds = %127
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %236

158:                                              ; preds = %155
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TK_COLUMN, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %236

164:                                              ; preds = %158
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %16, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %7, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %173 = icmp ne %struct.TYPE_22__* %172, null
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %164
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %178, %164
  %183 = load i32, i32* %16, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %196, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %16, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br label %194

194:                                              ; preds = %188, %185
  %195 = phi i1 [ false, %185 ], [ %193, %188 ]
  br label %196

196:                                              ; preds = %194, %182
  %197 = phi i1 [ true, %182 ], [ %195, %194 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load i32, i32* %16, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %212

203:                                              ; preds = %196
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  store i8* %211, i8** %15, align 8
  br label %212

212:                                              ; preds = %203, %202
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  store i8* null, i8** %17, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = call i8* (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_21__* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %219, i8* %220)
  store i8* %221, i8** %17, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @COLNAME_NAME, align 4
  %225 = load i8*, i8** %17, align 8
  %226 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %227 = call i32 @sqlite3VdbeSetColName(i32* %222, i32 %223, i32 %224, i8* %225, i32 %226)
  br label %235

228:                                              ; preds = %212
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @COLNAME_NAME, align 4
  %232 = load i8*, i8** %15, align 8
  %233 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %234 = call i32 @sqlite3VdbeSetColName(i32* %229, i32 %230, i32 %231, i8* %232, i32 %233)
  br label %235

235:                                              ; preds = %228, %215
  br label %264

236:                                              ; preds = %158, %155
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %18, align 8
  %245 = load i8*, i8** %18, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %252

247:                                              ; preds = %236
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i8* (%struct.TYPE_21__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_21__* %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %250)
  br label %256

252:                                              ; preds = %236
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %254 = load i8*, i8** %18, align 8
  %255 = call i8* @sqlite3DbStrDup(%struct.TYPE_21__* %253, i8* %254)
  br label %256

256:                                              ; preds = %252, %247
  %257 = phi i8* [ %251, %247 ], [ %255, %252 ]
  store i8* %257, i8** %18, align 8
  %258 = load i32*, i32** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @COLNAME_NAME, align 4
  %261 = load i8*, i8** %18, align 8
  %262 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %263 = call i32 @sqlite3VdbeSetColName(i32* %258, i32 %259, i32 %260, i8* %261, i32 %262)
  br label %264

264:                                              ; preds = %256, %235
  br label %265

265:                                              ; preds = %264, %140
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %6, align 4
  br label %90

269:                                              ; preds = %90
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %271 = load i32*, i32** %8, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %273 = call i32 @generateColumnTypes(%struct.TYPE_24__* %270, i32* %271, %struct.TYPE_25__* %272)
  br label %274

274:                                              ; preds = %269, %35, %29
  ret void
}

declare dso_local i32 @SELECTTRACE(i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeSetNumCols(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeSetColName(i32*, i32, i32, i8*, i32) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_21__*, i8*, i32, ...) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @generateColumnTypes(%struct.TYPE_24__*, i32*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
