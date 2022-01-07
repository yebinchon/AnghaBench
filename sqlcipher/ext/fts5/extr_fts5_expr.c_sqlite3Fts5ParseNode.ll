; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_sqlite3Fts5ParseNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_STRING = common dso_local global i32 0, align 4
@FTS5_NOT = common dso_local global i32 0, align 4
@FTS5_AND = common dso_local global i32 0, align 4
@FTS5_OR = common dso_local global i32 0, align 4
@FTS5_EOF = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"fts5: %s queries are not supported (detail!=full)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"phrase\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NEAR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @sqlite3Fts5ParseNode(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_22__* %2, %struct.TYPE_22__* %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SQLITE_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %250

22:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FTS5_STRING, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %28 = icmp ne %struct.TYPE_23__* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FTS5_STRING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = icmp ne %struct.TYPE_22__* %37, null
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %33, %29
  %41 = phi i1 [ false, %33 ], [ false, %29 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %26
  %43 = phi i1 [ true, %26 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FTS5_STRING, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = icmp eq %struct.TYPE_23__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %269

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @FTS5_STRING, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %59 = icmp eq %struct.TYPE_22__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %6, align 8
  br label %269

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @FTS5_STRING, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = icmp eq %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %6, align 8
  br label %269

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @FTS5_NOT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 2, i32* %13, align 4
  br label %112

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @FTS5_AND, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @FTS5_OR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80, %76
  store i32 2, i32* %13, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %90, %84
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = mul i64 8, %115
  %117 = add i64 24, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @sqlite3Fts5MallocZero(i64* %120, i32 %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %12, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %125 = icmp ne %struct.TYPE_22__* %124, null
  br i1 %125, label %126, label %249

126:                                              ; preds = %112
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  store %struct.TYPE_23__* %130, %struct.TYPE_23__** %132, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = call i32 @fts5ExprAssignXNext(%struct.TYPE_22__* %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @FTS5_STRING, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %241

138:                                              ; preds = %126
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %172, %138
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %139
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %149, i64 %151
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 2
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %154, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %157, i64 %159
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %145
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @FTS5_EOF, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %165, %145
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %139

175:                                              ; preds = %139
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %240

183:                                              ; preds = %175
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %186, i64 0
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  store %struct.TYPE_21__* %188, %struct.TYPE_21__** %16, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %211, label %193

193:                                              ; preds = %183
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 1
  br i1 %197, label %211, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %239

203:                                              ; preds = %198
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %203, %193, %183
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @SQLITE_OK, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i64, i64* @SQLITE_ERROR, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @assert(i32 %226)
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 1
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %234 = call i64 @sqlite3_mprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %233)
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %238 = call i32 @sqlite3_free(%struct.TYPE_22__* %237)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  br label %239

239:                                              ; preds = %211, %203, %198
  br label %240

240:                                              ; preds = %239, %175
  br label %248

241:                                              ; preds = %126
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %244 = call i32 @fts5ExprAddChildren(%struct.TYPE_22__* %242, %struct.TYPE_22__* %243)
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %247 = call i32 @fts5ExprAddChildren(%struct.TYPE_22__* %245, %struct.TYPE_22__* %246)
  br label %248

248:                                              ; preds = %241, %240
  br label %249

249:                                              ; preds = %248, %112
  br label %250

250:                                              ; preds = %249, %5
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %252 = icmp eq %struct.TYPE_22__* %251, null
  br i1 %252, label %253, label %267

253:                                              ; preds = %250
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SQLITE_OK, align 8
  %258 = icmp ne i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %262 = call i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_22__* %261)
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %264 = call i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_22__* %263)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %266 = call i32 @sqlite3Fts5ParseNearsetFree(%struct.TYPE_23__* %265)
  br label %267

267:                                              ; preds = %253, %250
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %268, %struct.TYPE_22__** %6, align 8
  br label %269

269:                                              ; preds = %267, %69, %60, %52
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  ret %struct.TYPE_22__* %270
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Fts5MallocZero(i64*, i32) #1

declare dso_local i32 @fts5ExprAssignXNext(%struct.TYPE_22__*) #1

declare dso_local i64 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_22__*) #1

declare dso_local i32 @fts5ExprAddChildren(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3Fts5ParseNodeFree(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3Fts5ParseNearsetFree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
