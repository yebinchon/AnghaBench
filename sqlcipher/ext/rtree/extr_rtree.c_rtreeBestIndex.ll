; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, double, i32, i32, i32, %struct.TYPE_5__*, i32, %struct.sqlite3_index_constraint* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_MAX_DIMENSIONS = common dso_local global i32 0, align 4
@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@RTREE_EQ = common dso_local global i8 0, align 1
@RTREE_GT = common dso_local global i8 0, align 1
@RTREE_LE = common dso_local global i8 0, align 1
@RTREE_LT = common dso_local global i8 0, align 1
@RTREE_GE = common dso_local global i8 0, align 1
@RTREE_MATCH = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @rtreeBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeBestIndex(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sqlite3_index_constraint*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @RTREE_MAX_DIMENSIONS, align 4
  %22 = mul nsw i32 %21, 8
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = trunc i64 %24 to i32
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 8
  %38 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %38, i64 %40
  %42 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %219, %50
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = sub i64 %24, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %64, %66
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ false, %57 ], [ %67, %63 ]
  br i1 %69, label %70, label %222

70:                                               ; preds = %68
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  %73 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %73, i64 %75
  store %struct.sqlite3_index_constraint* %76, %struct.sqlite3_index_constraint** %14, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %142

79:                                               ; preds = %70
  %80 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %81 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %142

84:                                               ; preds = %79
  %85 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %86 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %142

89:                                               ; preds = %84
  %90 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %91 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 133
  br i1 %93, label %94, label %142

94:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store double 3.000000e+01, double* %135, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i32 1, i32* %137, align 8
  %138 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @SQLITE_OK, align 4
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

142:                                              ; preds = %89, %84, %79, %70
  %143 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %144 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %218

147:                                              ; preds = %142
  %148 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %149 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %154 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %155, %158
  br i1 %159, label %165, label %160

160:                                              ; preds = %152, %147
  %161 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %162 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 128
  br i1 %164, label %165, label %218

165:                                              ; preds = %160, %152
  %166 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %167 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  switch i64 %168, label %181 [
    i64 133, label %169
    i64 131, label %171
    i64 130, label %173
    i64 129, label %175
    i64 132, label %177
    i64 128, label %179
  ]

169:                                              ; preds = %165
  %170 = load i8, i8* @RTREE_EQ, align 1
  store i8 %170, i8* %17, align 1
  br label %182

171:                                              ; preds = %165
  %172 = load i8, i8* @RTREE_GT, align 1
  store i8 %172, i8* %17, align 1
  br label %182

173:                                              ; preds = %165
  %174 = load i8, i8* @RTREE_LE, align 1
  store i8 %174, i8* %17, align 1
  br label %182

175:                                              ; preds = %165
  %176 = load i8, i8* @RTREE_LT, align 1
  store i8 %176, i8* %17, align 1
  br label %182

177:                                              ; preds = %165
  %178 = load i8, i8* @RTREE_GE, align 1
  store i8 %178, i8* %17, align 1
  br label %182

179:                                              ; preds = %165
  %180 = load i8, i8* @RTREE_MATCH, align 1
  store i8 %180, i8* %17, align 1
  br label %182

181:                                              ; preds = %165
  store i8 0, i8* %17, align 1
  br label %182

182:                                              ; preds = %181, %179, %177, %175, %173, %171, %169
  %183 = load i8, i8* %17, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %217

185:                                              ; preds = %182
  %186 = load i8, i8* %17, align 1
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %26, i64 %189
  store i8 %186, i8* %190, align 1
  %191 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  %192 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  %195 = add nsw i32 %194, 48
  %196 = trunc i32 %195 to i8
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %26, i64 %199
  store i8 %196, i8* %200, align 1
  %201 = load i32, i32* %11, align 4
  %202 = sdiv i32 %201, 2
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i32 %202, i32* %209, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %185, %182
  br label %218

218:                                              ; preds = %217, %160, %142
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %57

222:                                              ; preds = %68
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  store i32 2, i32* %224, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 4
  store i32 1, i32* %226, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %222
  %230 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26)
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 8
  %233 = icmp eq i32 0, %230
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %235, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

236:                                              ; preds = %229, %222
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %11, align 4
  %241 = sdiv i32 %240, 2
  %242 = ashr i32 %239, %241
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = sitofp i32 %243 to double
  %245 = fmul double 6.000000e+00, %244
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  store double %245, double* %247, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %252

252:                                              ; preds = %236, %234, %117
  %253 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %253)
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
